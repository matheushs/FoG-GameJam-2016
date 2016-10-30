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
		if(PlayerPrefs.HasKey("pontos")) {
			setPontos (PlayerPrefs.GetInt ("pontos"));
			recorde = PlayerPrefs.GetInt ("recorde");
			num_partidas = PlayerPrefs.GetInt ("num_partidas");

		} else {
			num_partidas = 0;
			recorde = 0;
			setPontos (0);
		}
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
		if(int.Parse(pontos.text) > recorde) recorde = int.Parse(pontos.text);
		num_partidas++;

		pontosGO.text = pontos.text;
		recordeGO.text = "" + recorde;
		partidasGO.text = "" + num_partidas;

		PlayerPrefs.SetInt ("pontos", int.Parse(pontos.text));
		PlayerPrefs.SetInt ("recorde", recorde);
		PlayerPrefs.SetInt ("num_partidas", num_partidas);

		GameOver.SetActive (true);
	}

	public void TryAgain() {
		GameOver.SetActive (false);
		//iniciar o jogo de novo
	}

}
