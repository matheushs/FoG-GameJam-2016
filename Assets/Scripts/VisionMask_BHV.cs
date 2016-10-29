using UnityEngine;
using System.Collections.Generic;
using UnityEngine.UI;

public class VisionMask_BHV : MonoBehaviour {

    public Image imageRef;


	void Start () {
	    
	}
	

	void Update () {
	
	}

    public class Pulse {
        Vector3 origin;
        float intensity;
    }

    private static List<Pulse> pulseList = new List<Pulse>();
    public static void AddPulse() {

    }

}
