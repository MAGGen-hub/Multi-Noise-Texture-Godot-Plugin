shader_type spatial;
uniform sampler3D noise;
void vertex() {
	COLOR.rgb = VERTEX;
	// Called for every vertex the material is visible on.
}

void fragment() {
	vec3 uvw = COLOR.rgb;
	vec4 tex = texture(noise,uvw);
	ALBEDO = tex.rgb;
	ALPHA = tex.a;
}

//void light() {
	// Called for every pixel for every light affecting the material.
	// Uncomment to replace the default light processing function with this one.
//}
