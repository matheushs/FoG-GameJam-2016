using UnityEngine;
using System.Collections;

public class LevelGen : MonoBehaviour {
	enum Obstaculo {
		NADA,
		SLIDE,
		JUMP,
		BOX,
		HOLE,
		SPIKE
	}
	public int obstacleLength = 10;
	public int offset = 3;
	public GameObject parede;
	public GameObject chao;
	private Noise noise;
	private int lastHeight;

	void Awake(){
		noise = new Noise(Noise.Color.RED, 4);
		lastHeight = (int) noise.nextVal ();
	}
	void createObstacles(Level level){
		for (int i = 0; i < level.heights.Length; i++) {
			int height = level.heights [i];
			Obstaculo obj = level.obstaculos [i];
			if (obj == Obstaculo.NADA) {
				Instantiate (chao, new Vector3(level.x+i,height-1,0), Quaternion.identity);
			} else if (obj == Obstaculo.SLIDE) {
				Instantiate (parede, new Vector3(level.x + i,height+1,0), Quaternion.identity);
				Instantiate (parede, new Vector3(level.x + i,height+2,0), Quaternion.identity);

				Instantiate (chao, new Vector3(level.x+i,height-1,0), Quaternion.identity);
			} else if (obj == Obstaculo.JUMP) {
				Instantiate (parede, new Vector3(level.x + i,height,0), Quaternion.identity);
				Instantiate (parede, new Vector3(level.x + i,height+1,0), Quaternion.identity);

				Instantiate (chao, new Vector3(level.x+i,height-1,0), Quaternion.identity);
			} else if (obj == Obstaculo.BOX) {
				//TODO implementar box

				Instantiate (chao, new Vector3(level.x+i,height-1,0), Quaternion.identity);
			} else if (obj == Obstaculo.HOLE) {
			} else if (obj == Obstaculo.SPIKE) {
				//TODO implementar spike

				Instantiate (chao, new Vector3(level.x+i,height-1,0), Quaternion.identity);
			}

		}
	}
	bool pode(Obstaculo a, Obstaculo b){
		if (a == Obstaculo.NADA || b == Obstaculo.NADA)
			return true;
		if (a == b)
			return true;
		if (a == Obstaculo.SLIDE || b == Obstaculo.SLIDE)
			return false;
		if (a == Obstaculo.JUMP) {
			return  (b != Obstaculo.HOLE && b != Obstaculo.SPIKE);
		}
		if (b == Obstaculo.JUMP) {
			return  (a != Obstaculo.HOLE && a != Obstaculo.SPIKE);
		}
		return true;
	}
	Level genLevel(int level, int x){
		Level lvl = new Level();
		lvl.x = x;
		int aux = level;
		ArrayList possibleObstacles = new ArrayList();
		if((aux & 1) == 1) {
			possibleObstacles.Add (Obstaculo.SLIDE);
		}
		aux = aux >> 1;
		if((aux & 1) == 1) {
			possibleObstacles.Add (Obstaculo.JUMP);
		}
		aux = aux >> 1;
		if((aux & 1) == 1) {
			possibleObstacles.Add (Obstaculo.BOX);
		}
		aux = aux >> 1;
		if((aux & 1) == 1) {
			possibleObstacles.Add (Obstaculo.HOLE);
		}
		aux = aux >> 1;
		if((aux & 1) == 1) {
			possibleObstacles.Add (Obstaculo.SPIKE);
		}


		int lvlsize = obstacleLength + offset;
		lvl.heights = new int[lvlsize];
		//generate heights
		for (int i = 0; i < offset; i++) {
			lvl.heights [i] = lastHeight;
		}
		for (int i = offset; i < lvlsize; i++) {
			lvl.heights [i] = (int)Mathf.Round(noise.nextVal());
		}
		lastHeight = lvl.heights [lvlsize - 1];
		//TODO generate obstacles 
		Obstaculo last = Obstaculo.NADA;
		lvl.obstaculos = new Obstaculo[lvlsize];


		if (possibleObstacles.Count == 0) {
			return lvl;
		}
		for (int i = offset; i < lvlsize - 1; i++) {
			if (lvl.heights [i - 1] == lvl.heights [i] && lvl.heights [i] == lvl.heights [i + 1]) {
				float prob = 0.5f - 1f / level;

				if (Random.Range (0f, 1f) < prob) {
					int t = Random.Range (0, possibleObstacles.Count);
					int u = t;
					while (true) {						
						if (pode (lvl.obstaculos[i-1], (Obstaculo) possibleObstacles [u])) {
							Debug.Log (possibleObstacles [u]);
							lvl.obstaculos [i] = (Obstaculo) possibleObstacles [u];
							break;
						} else {
							u = (u + 1) % possibleObstacles.Count;
							if (u == t)
								break;
						}
					}
				}
			}
		}
		return lvl;
	}
	void Start () {
		int x = 0;
		for (int i = 1; i < 32; i++) {
			Level lvl = genLevel (i, x);
			x += offset + obstacleLength;
			createObstacles (lvl);
		}

	}

	void Update () {

	}
	private class Level {
		public int x;
		public int[] heights;
		public Obstaculo[] obstaculos;
	}
}
