import hxd.Perlin;
import h3d.scene.Scene;
import Voxel;

class SandTerrain {
	var terrain:Array<Voxel>;
	var s3d:Scene;

	public function new(s3d) {
		this.s3d = s3d;
	}

	public function createTerrain() {
		var voxels = new Array();
		var perlin = new Perlin();

		var size = 100;

		for (x in 0...size) {
			for (y in 0...size) {
				var voxel = new Voxel(x, y, Math.fround(6 * perlin.perlin(1020, x / size + 0.1, y / size + 0.1, 3)), this.s3d);
				voxels.push(voxel);
			}
		}

		return voxels;
	}
}
