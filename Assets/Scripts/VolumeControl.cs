using UnityEngine;
using System.Collections;
using UnityEngine.UI;

//[RequireComponent(typeof(AudioSource))]
public class VolumeControl : MonoBehaviour {

	public AudioSource Music;
	public AudioSource Effect;

	public Slider volumeM;  //volume de musica
	public Slider volumeE;  // de efeitos
	public Slider Master;   // volume de tudo

	private float aux = 0.0f;
	private float vM;
	private float vE;

	void Start() {
		volumeM.value = 1;
		volumeE.value = 1;
		Master.value = 1;
		VolumeFundo ();
		VolumeActions ();

	}

	public void SaveMasterVolume(){

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
		Effect.volume = vE;

	}

	public void Mute() {
		if (Master.value != 0) {
			aux = Master.value;
			Master.value = 0;
		} else 
			Master.value = aux;
	}
}