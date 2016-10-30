using UnityEngine;
using System.Collections;

public class Bawks_BHV : MonoBehaviour {

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}

    public void StartAnimation() {
        gameObject.GetComponent<Animator>().enabled = true;
    }

    public void DestroyMe() { Destroy(gameObject); }
}
