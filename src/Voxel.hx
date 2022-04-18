import h3d.scene.Scene;
import h3d.prim.Cube;
import h3d.scene.Mesh;

class Voxel {
	var x:Float;
	var y:Float;
	var z:Float;

	var mesh:Mesh;
	var cube:Cube;

	public function new(x, y, z, s3d:Scene) {
		this.x = x;
		this.y = y;
		this.z = z;

		// creates a cube to act as our geometry
		var cube = new h3d.prim.Cube();

		// translate it so its center will be at the center of the cube
		cube.translate(-0.5, -0.5, -0.5);
		this.cube = cube;

		// Create a mesh out of our geometry - it has a default material applied.
		var mesh = new Mesh(cube, s3d);

		// Set the material color to Haxe orange
		mesh.material.color.setColor(0xEA8220);
		mesh.material.shadows = true;
		cube.selectMaterial(2);

		cube.unindex();
		cube.addUVs();

		cube.addNormals();

		this.mesh = mesh;

		cube.translate(x, y, z);
	}
}
