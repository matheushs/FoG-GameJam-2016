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
	public int batata;
	public GameObject parede;
	public GameObject chao;
	private Noise noise;

	void Awake(){
		noise = new Noise();
	}
	int []getHeights (int len){
		int[] heights = new int[len];
		for (int i = 0; i < len; i++) {
			heights [i] = (int) Mathf.Round(noise.nextVal());
		}
		return heights;
	}
	Obstaculo [] getObstacles(int[] heights){
		Obstaculo[] obstacles = new Obstaculo[heights.Length];
		Obstaculo obs = Obstaculo.NADA;
		for (int i = 0; i < heights.Length; i++) {
			obstacles [i] = obs;
			obs = (Obstaculo) Random.Range(0,6);
		}
		return obstacles;
	}
	void createObstacles(int[] heights, Obstaculo[] obstacles){
		for (int x = 0; x < heights.Length; x++) {
			int height = heights [x];
			Obstaculo obj = obstacles [x];
			if (obj == Obstaculo.NADA) {
			} else if (obj == Obstaculo.SLIDE) {
				//Instantiate (parede, new Vector3(x,height+1,0), Quaternion.identity);
				//Instantiate (parede, new Vector3(x,height+2,0), Quaternion.identity);
			}
			Instantiate (chao, new Vector3(x,height-1,0), Quaternion.identity);
		}
	}
	// Use this for initialization
	void Start () {
		int[] heights = getHeights (1000);
		Obstaculo[] obstacles = getObstacles (heights);
		createObstacles (heights, obstacles);

	}

	// Update is called once per frame
	void Update () {

	}
}
