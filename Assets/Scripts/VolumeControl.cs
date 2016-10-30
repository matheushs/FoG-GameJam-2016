using UnityEngine;
using System.Collections;
using UnityEngine.UI;

//[RequireComponent(typeof(AudioSource))]
public class VolumeControl : MonoBehaviour {

	public AudioSource Music;
	public AudioSource Effect1;

	public Slider Master;   // volume de tudo
	public Slider volumeM;  // volume de musica
	public Slider volumeE;  // de efeitos

	private float aux = 0.0f;
	private float vM;
	private float vE;

	void Start() {
		
		if (PlayerPrefs.HasKey ("MasterVolume")) {
			Master.value = PlayerPrefs.GetFloat("MasterVolume");
			volumeM.value = PlayerPrefs.GetFloat("MusicVolume");
			volumeE.value = PlayerPrefs.GetFloat("EffectsVolume");

		} else {
			volumeM.value = 1;
			volumeE.value = 1;
			Master.value = 1;
		}

		VolumeFundo ();
		VolumeActions ();

	}

	public void SaveVolume(){
		PlayerPrefs.SetFloat("MasterVolume", aux);
		PlayerPrefs.SetFloat("MusicVolume", vM);
		PlayerPrefs.SetFloat("EffectsVolume", vE);

	}

	public void VolumeFundo() {
		vM = volumeM.value * Master.value;
		setVolumeFundo ();

	}

	public void VolumeActions() {
		vE = volumeE.value * Master.value;
		setVolumeActions ();

	}

	private void setVolumeFundo() {
		Music.volume = vM;

	}

	private void setVolumeActions() {
		Effect1.volume = vE;

	}

	public void Mute() {
		if (Master.value != 0) {
			aux = Master.value;
			Master.value = 0;
		} else 
			Master.value = aux;
	}
}