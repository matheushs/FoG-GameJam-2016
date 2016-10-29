using UnityEngine;
using System.Collections;
using UnityEngine.UI;

//[RequireComponent(typeof(AudioSource))]
public class PlaySoundEffect : MonoBehaviour {
	
	public AudioSource SoundEffect;



	public void PlayEffect() {
		SoundEffect.Play ();
	}
}