using UnityEngine;
using System.Collections;

public class Noise
{
	private float[] frequencies = new float[]{ 1f, 2f, 4f, 8f, 16f, 32f };
	private float[] amplitudes = new float[]{ 1.0f, 0.5f, 0.4f, 0.3f, 0.2f, 0.05f };
	private float cicleSize = 100.0f;
	private float[] phase;
	private int k = 0;
	public Noise ()	{
		phase = new float[frequencies.Length];
		for (int i = 0; i < phase.Length; i++) {
			phase [i] = Random.Range (0, Mathf.PI * 2);
		}
	}
	public float nextVal(){
		float val = 0;
		for (int i = 0; i < frequencies.Length; i++) {
			val += Mathf.Sin (Mathf.PI * k * frequencies [i] / cicleSize + phase [i])*amplitudes[i];

		}
		k++;
		return val;
	}
}
