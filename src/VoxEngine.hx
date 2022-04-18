import h3d.scene.Scene;
import h3d.scene.Mesh;

class VoxEngine {
	var s3d:Scene;

	public function new(s3d) {
		this.s3d = s3d;
	}

	public function start() {
		var sandTerrain = new SandTerrain(this.s3d);
		sandTerrain.createTerrain();
	}
}
