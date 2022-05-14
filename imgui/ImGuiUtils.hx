package imgui;

import imgui.ImGui;

/**
	Helper with pre-allocated generic ImGui types to reduce allocation count.
	
	Those are expected to be fire-and-forget type and should be available for reuse right after a function call.
**/
class ImTypeCache {
	// TODO: Make it a pool with newFrame() resets.
	
	static inline var MAX_SLOTS = 10;
	static var vec2Slot: Int = 0;
	static var vec4Slot: Int = 0;
	
	/**
		Retreive a preallocated ImVec2 and set its values to `x` and `y`.
	**/
	public static inline function vec2(x: Single, y: Single): ImVec2 {
		var v = imVec2[vec2Slot++];
		if (vec2Slot == MAX_SLOTS) vec2Slot = 0;
		return v.set(x, y);
	}
	
	/**
		Retreive a preallocated ImVec4 and set its values to `x`, `y`, `z` and `w`.
	**/
	public static inline function vec4(x: Single, y: Single, z: Single, w: Single): ImVec4 {
		var v = imVec4[vec4Slot++];
		if (vec4Slot == MAX_SLOTS) vec4Slot = 0;
		return v.set(x, y, z, w);
	}
	
	/**
		Retreive a preallocated ImVec4 and set its values RGBA value of `col`.
	**/
	public static inline function vec4c(col: Int): ImVec4 {
		var v = imVec4[vec4Slot++];
		if (vec4Slot == MAX_SLOTS) vec4Slot = 0;
		return v.setColor(col);
	}
	
	/**
		Retreive a preallocated ImVec4 and set its values RGB value of `col` and and A of `alpha`.
	**/
	public static inline function vec4ca(col: Int, alpha: Float = 1.0): ImVec4 {
		var v = imVec4[vec4Slot++];
		if (vec4Slot == MAX_SLOTS) vec4Slot = 0;
		return v.setColorRGB(col, alpha);
	}

	public static var imVec2: Array<ImVec2> = [for (i in 0...MAX_SLOTS) ({ x: 0, y: 0 })];
	
	public static var imVec4: Array<ImVec4> = [for (i in 0...MAX_SLOTS) ({ x: 0, y: 0, z: 0, w: 0 })];

}
