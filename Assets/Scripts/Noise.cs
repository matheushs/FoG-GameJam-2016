using UnityEngine;
using System.Collections;

public class Noise
{
	public enum Color {
		RED,
		BLUE
	}
	private float[] frequencies;
	private float[] amplitudes;
	private float cicleSize = 100.0f;
	private float[] phase;
	private float max;
	private int k = 0;
	private float range;
	public Noise (Color color, float range)	{
		if (color == Color.RED) {
			frequencies = new float[]{ 1f, 2f, 4f, 8f, 16f, 32f };
			amplitudes = new float[]{ 1.0f, 0.5f, 0.4f, 0.3f, 0.2f, 0.1f };
		} else {
			frequencies = new float[]{ 1f, 2f, 4f, 8f, 16f, 32f };
			amplitudes = new float[]{ 0.1f, 0.2f, 0.3f, 0.4f, 0.5f, 1.0f };
		}
		max = 0;
		for (int i = 0; i < amplitudes.Length; i++) {
			max += amplitudes [i];
		}
		phase = new float[frequencies.Length];
		for (int i = 0; i < phase.Length; i++) {
			phase [i] = Random.Range (0, Mathf.PI * 2);
		}
		this.range = range;
	}
	public float nextVal(){
		float val = 0;
		for (int i = 0; i < frequencies.Length; i++) {
			val += Mathf.Sin (Mathf.PI * k * frequencies [i] / cicleSize + phase [i])*amplitudes[i];

		}
		k++;
		val = (val + max) / (max*2);
		return val*range;
	}
}
