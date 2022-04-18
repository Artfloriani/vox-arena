import haxe.iterators.StringKeyValueIteratorUnicode;
import h3d.scene.Mesh;
import VoxEngine;

class Main extends hxd.App {
	override function init() {
		var directionalLight = new h3d.scene.fwd.DirLight(new h3d.Vector(0.2, 0.3, -1), s3d);
		directionalLight.enableSpecular = true;

		// set the ambient light to 30%
		s3d.lightSystem.ambientLight.set(0.2, 0.2, 0.2);

		s3d.camera.pos.set(-100, 130, 100);
		s3d.camera.target.set(50, 50, 10);
		var engine = new VoxEngine(s3d);
		engine.start();
	}

	static function main() {
		new Main();
	}
}
