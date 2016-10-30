using UnityEngine;
using System.Collections;
using UnityEngine.UI;
using UnityEngine.SceneManagement;
using UnityEngine.EventSystems;

public class Menu : MonoBehaviour {
	public Button Play;
	public Button Config;
	public Button Credits;
	public Button Exit;

	public Button VoltarConf;
	public Button VoltarCred;
	public Button Mudo;

	public GameObject GOMenu;
	public GameObject GOConfig;
	public GameObject GOCredits;
	public GameObject GOSounds;

	private EventSystem ES;
	public PlaySceneMusic Music;
	public VolumeControl VolumeC;

	void Update() {
		ES = EventSystem.current;

		if (ES.currentSelectedGameObject == null){
			if (GOMenu.activeInHierarchy)
				ES.SetSelectedGameObject (Play.gameObject);

			if (GOConfig.activeInHierarchy)
				ES.SetSelectedGameObject (VoltarConf.gameObject);

			if (GOCredits.activeInHierarchy)
				ES.SetSelectedGameObject (VoltarCred.gameObject);
		}
	}

	public void PlaySelected() {
		SceneManager.LoadScene (""); // carregar jogo(colocar o nome da cena como parametro)
		Music.FadeOut();
		VolumeC.SaveVolume ();
	}

	public void ConfigSelected() {
		GOMenu.SetActive (false);
		GOConfig.SetActive (true);
		ES.SetSelectedGameObject (VoltarConf.gameObject);
	}

	public void CreditsSelected() {
		GOMenu.SetActive (false);
		GOCredits.SetActive (true);
		ES.SetSelectedGameObject (VoltarCred.gameObject);		
	}

	public void ExitSelected() {
		VolumeC.SaveVolume ();
		Application.Quit ();
	}

	public void Voltar() {
		GOMenu.SetActive (true);
		GOCredits.SetActive (false);
		GOConfig.SetActive (false);
		ES.SetSelectedGameObject (Play.gameObject);
	}


}
