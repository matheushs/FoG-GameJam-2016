using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class HUD : MonoBehaviour {
	public GameObject GameOver;

	public GameObject Play;
	public GameObject Pause;

	public Text pontos;
	public Text pontosGO;
	public Text recordeGO;
	public Text partidasGO;

	private int num_partidas;
	private int recorde;

	void Start() {
		num_partidas = 0;
		recorde = 0;
		setPontos (0);
	}

	public void setPontos(int pts){
		pontos.text = "" + pts;
	}

	public void PauseGame() {
		Pause.SetActive (false);
		Play.SetActive (true);
		Time.timeScale = 0;
	}

	public void PlayGame() {
		Pause.SetActive (true);
		Play.SetActive (false);
		Time.timeScale = 1;
	}

	public void ShowGameOver() {
		recorde++;
		num_partidas++;
		pontosGO.text = "" + pontos;
		recordeGO.text = "" + recorde;
		partidasGO.text = "" + num_partidas;
	}

}
