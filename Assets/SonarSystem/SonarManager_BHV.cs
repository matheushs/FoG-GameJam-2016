using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class Wave {

    private float currentRadius;
    private float speed;
    private float range;
    private Vector3 position;
    private float thickness;
    private AnimationCurve decayCurve;

    public Wave (float newSpeed, float newRange, Vector3 newPosition, float newThickness, AnimationCurve newDecayCurve) {

        currentRadius = 0.0f;
        speed = newSpeed;
        range = newRange;
        position = newPosition;
        thickness = newThickness;
        decayCurve = newDecayCurve;


    }

    public void UpdateWave (float dt) {

        currentRadius += speed*dt;

    }
    
    public Vector3 GetPosition () {

        return position;

    }

    public float GetThickness () {

        return thickness;

    }

    public float GetRadius () {

        return currentRadius;

    }

    public bool IsExpired () {

        return currentRadius > range;

    }

    public float GetIntensity () {

        return decayCurve.Evaluate (currentRadius / range);

    }

}

public class SonarManager_BHV : MonoBehaviour {


    public List<Material> affectedMaterials;
    private List<Wave> waves;


    public void AddWave (Wave newWave) {

        if (waves.Count > 7) {

            waves.RemoveAt (0);

        }
        waves.Add (newWave);

    }

    void Start () {

        waves = new List<Wave> ();

    }
	// Update is called once per frame
	void Update () {
	

        foreach (Wave wave in waves) {

            wave.UpdateWave (Time.deltaTime);
            
        }

        waves.RemoveAll (x => x.IsExpired ());

        //Material update

        for (int i = 0 ; i < affectedMaterials.Count ; i++) {

            
            for (int j = 0 ; j < 8 ; j++) {
                if (j < waves.Count) {
                    affectedMaterials [i].SetVector ("_WavePosTime" + j, new Vector4 (waves [j].GetPosition ().x, waves [j].GetPosition ().y, waves [j].GetPosition ().z, waves [j].GetRadius ()));
                    affectedMaterials [i].SetFloat ("_WaveThick" + j, waves [j].GetThickness ());
                    affectedMaterials [i].SetFloat ("_WaveFade" + j, waves [j].GetIntensity ());
                }
                else {

                    affectedMaterials [i].SetVector ("_WavePosTime" + j, Vector4.zero);
                }
                //affectedMaterials [i].SetFloat ("_Intensity" + j, );
            }

        }

    }
}
