package imgui;

import haxe.io.Bytes;

@:forward
@:forward.variance
abstract ExtDynamic<T>(Dynamic) from T to T {
	// Helper methods to cconvert away from vdynamic.
	public var v(get, never):T;
	inline function get_v():T return (this:T);
	public inline function to():T return (this:T);

}

@:enum abstract ImGuiWindowFlags(Int) from Int to Int {
	var None : Int = 0;
	var NoTitleBar : Int = 1;
	var NoResize : Int = 2;
	var NoMove : Int = 4;
	var NoScrollbar : Int = 8;
	var NoScrollWithMouse : Int = 16;
	var NoCollapse : Int = 32;
	var AlwaysAutoResize : Int = 64;
	var NoBackground : Int = 128;
	var NoSavedSettings : Int = 256;
	var NoMouseInputs : Int = 512;
	var MenuBar : Int = 1024;
	var HorizontalScrollbar : Int = 2048;
	var NoFocusOnAppearing : Int = 4096;
	var NoBringToFrontOnFocus : Int = 8192;
	var AlwaysVerticalScrollbar : Int = 16384;
	var AlwaysHorizontalScrollbar : Int = 32768;
	var AlwaysUseWindowPadding : Int = 65536;
	var NoNavInputs : Int = 262144;
	var NoNavFocus : Int = 524288;
	var UnsavedDocument : Int = 1048576;
	var NoDocking : Int = 2097152;
	var NoNav : Int = 786432;
	var NoDecoration : Int = 43;
	var NoInputs : Int = 786944;
}

@:enum abstract ImGuiDockNodeFlags(Int) from Int to Int {
	var None : Int = 0;
	var KeepAliveOnly : Int = 1;
	var NoCentralNode : Int = 2;
	var NoDockingInCentralNode : Int = 4;
	var PassthruCentralNode : Int = 8;
	var NoSplit : Int = 16;
	var NoResize : Int = 32;
	var AutoHideTabBar : Int = 64;
	// Private/experimental flags
	var NoDocking : Int = 65536;
	var NoDockingSplitMe : Int = 131072;
}

@:enum abstract ImGuiTreeNodeFlags(Int) from Int to Int {
	var None : Int = 0;
	var Selected : Int = 1;
	var Framed : Int = 2;
	var AllowItemOverlap : Int = 4;
	var NoTreePushOnOpen : Int = 8;
	var NoAutoOpenOnLog : Int = 16;
	var DefaultOpen : Int = 32;
	var OpenOnDoubleClick : Int = 64;
	var OpenOnArrow : Int = 128;
	var Leaf : Int = 256;
	var Bullet : Int = 512;
	var FramePadding : Int = 1024;
	var SpanAvailWidth : Int = 2048;
	var SpanFullWidth : Int = 4096;
	var NavLeftJumpsBackHere : Int = 8192;
	var CollapsingHeader : Int = 26;
}

@:enum abstract ImGuiTabItemFlags(Int) from Int to Int {
	var None : Int = 0;
	var UnsavedDocument : Int = 1;
	var SetSelected : Int = 2;
	var NoCloseWithMiddleMouseButton : Int = 4;
	var NoPushId : Int = 8;
}

@:enum abstract ImGuiTabBarFlags(Int) from Int to Int {
	var None : Int = 0;
	var Reorderable : Int = 1;
	var AutoSelectNewTabs : Int = 2;
	var TabListPopupButton : Int = 4;
	var NoCloseWithMiddleMouseButton : Int = 8;
	var NoTabListScrollingButtons : Int = 16;
	var NoTooltip : Int = 32;
	var FittingPolicyResizeDown : Int = 64;
	var FittingPolicyScroll : Int = 128;
	var FittingPolicyMask_ : Int = 192;
	var FittingPolicyDefault_ : Int = 64;
}

@:enum abstract ImGuiStyleVar(Int) from Int to Int {
	var Alpha = 0;
	var DisabledAlpha;
	var WindowPadding;
	var WindowRounding;
	var WindowBorderSize;
	var WindowMinSize;
	var WindowTitleAlign;
	var ChildRounding;
	var ChildBorderSize;
	var PopupRounding;
	var PopupBorderSize;
	var FramePadding;
	var FrameRounding;
	var FrameBorderSize;
	var ItemSpacing;
	var ItemInnerSpacing;
	var IndentSpacing;
	var CellPadding;
	var ScrollbarSize;
	var ScrollbarRounding;
	var GrabMinSize;
	var GrabRounding;
	var TabRounding;
	var ButtonTextAlign;
	var SelectableTextAlign;
	var COUNT;
}

@:enum abstract ImGuiSelectableFlags(Int) from Int to Int {
	var None : Int = 0;
	var DontClosePopups : Int = 1;
	var SpanAllColumns : Int = 2;
	var AllowDoubleClick : Int = 4;
	var Disabled : Int = 8;
	var AllowItemOverlap : Int = 16;
}

@:enum abstract ImGuiNavInput(Int) from Int to Int {
	var Activate : Int = 0;
	var Cancel : Int = 1;
	var Input : Int = 2;
	var Menu : Int = 3;
	var DpadLeft : Int = 4;
	var DpadRight : Int = 5;
	var DpadUp : Int = 6;
	var DpadDown : Int = 7;
	var LStickLeft : Int = 8;
	var LStickRight : Int = 9;
	var LStickUp : Int = 10;
	var LStickDown : Int = 11;
	var FocusPrev : Int = 12;
	var FocusNext : Int = 13;
	var TweakSlow : Int = 14;
	var TweakFast : Int = 15;
	var KeyMenu_ : Int = 16;
	var KeyLeft_ : Int = 17;
	var KeyRight_ : Int = 18;
	var KeyUp_ : Int = 19;
	var KeyDown_ : Int = 20;
	var COUNT : Int = 21;
	var InternalStart_ : Int = 16;
}

@:enum abstract ImGuiMouseCursor(Int) from Int to Int {
	var None : Int = -1;
	var Arrow : Int = 0;
	var TextInput : Int = 1;
	var ResizeAll : Int = 2;
	var ResizeNS : Int = 3;
	var ResizeEW : Int = 4;
	var ResizeNESW : Int = 5;
	var ResizeNWSE : Int = 6;
	var Hand : Int = 7;
	var NotAllowed : Int = 8;
	var COUNT : Int = 9;
}

@:enum abstract ImGuiMouseButton(Int) from Int to Int {
	var Left : Int = 0;
	var Right : Int = 1;
	var Middle : Int = 2;
	var COUNT : Int = 5;
}

@:enum abstract ImGuiKey(Int) from Int to Int {
	var Tab : Int = 512;
	var LeftArrow : Int = 513;
	var RightArrow : Int = 514;
	var UpArrow : Int = 515;
	var DownArrow : Int = 516;
	var PageUp : Int = 517;
	var PageDown : Int = 518;
	var Home : Int = 519;
	var End : Int = 520;
	var Insert : Int = 521;
	var Delete : Int = 522;
	var Backspace : Int = 523;
	var Space : Int = 524;
	var Enter : Int = 525;
	var Escape : Int = 526;
	var LeftCtrl : Int = 527;
	var LeftShift : Int = 528;
	var LeftAlt : Int = 529;
	var LeftSuper : Int = 530;
	var RightCtrl : Int = 531;
	var RightShift : Int = 532;
	var RightAlt : Int = 533;
	var RightSuper : Int = 534;
	//
	var A: Int = 546;
	//
	var KeyPadEnter : Int = 615;
	//
	var ModCtrl : Int = 641;
	var ModShift : Int = 642;
	var ModAlt : Int = 643;
	var ModSuper : Int = 644;
}

@:enum abstract ImGuiInputTextFlags(Int) from Int to Int {
	var None : Int = 0;
	var CharsDecimal : Int = 1;
	var CharsHexadecimal : Int = 2;
	var CharsUppercase : Int = 4;
	var CharsNoBlank : Int = 8;
	var AutoSelectAll : Int = 16;
	var EnterReturnsTrue : Int = 32;
	var CallbackCompletion : Int = 64;
	var CallbackHistory : Int = 128;
	var CallbackAlways : Int = 256;
	var CallbackCharFilter : Int = 512;
	var AllowTabInput : Int = 1024;
	var CtrlEnterForNewLine : Int = 2048;
	var NoHorizontalScroll : Int = 4096;
	var AlwaysInsertMode : Int = 8192;
	var ReadOnly : Int = 16384;
	var Password : Int = 32768;
	var NoUndoRedo : Int = 65536;
	var CharsScientific : Int = 131072;
	var CallbackResize : Int = 262144;
	var Multiline : Int = 1048576;
	var NoMarkEdited : Int = 2097152;
}

@:enum abstract ImGuiHoveredFlags(Int) from Int to Int {
	var None                          = 0;        // Return true if directly over the item/window; not obstructed by another window; not obstructed by an active popup or modal blocking inputs under them.
	var ChildWindows                  = 1 << 0;   // IsWindowHovered() only: Return true if any children of the window is hovered
	var RootWindow                    = 1 << 1;   // IsWindowHovered() only: Test from root window (top most parent of the current hierarchy)
	var AnyWindow                     = 1 << 2;   // IsWindowHovered() only: Return true if any window is hovered
	var NoPopupHierarchy              = 1 << 3;   // IsWindowHovered() only: Do not consider popup hierarchy (do not treat popup emitter as parent of popup) (when used with _ChildWindows or _RootWindow)
	var DockHierarchy                 = 1 << 4;   // IsWindowHovered() only: Consider docking hierarchy (treat dockspace host as parent of docked window) (when used with _ChildWindows or _RootWindow)
	var AllowWhenBlockedByPopup       = 1 << 5;   // Return true even if a popup window is normally blocking access to this item/window
	//var AllowWhenBlockedByModal     = 1 << 6;   // Return true even if a modal popup window is normally blocking access to this item/window. FIXME-TODO: Unavailable yet.
	var AllowWhenBlockedByActiveItem  = 1 << 7;   // Return true even if an active item is blocking access to this item/window. Useful for Drag and Drop patterns.
	var AllowWhenOverlapped           = 1 << 8;   // IsItemHovered() only: Return true even if the position is obstructed or overlapped by another window
	var AllowWhenDisabled             = 1 << 9;   // IsItemHovered() only: Return true even if the item is disabled
	var NoNavOverride                 = 1 << 10;  // Disable using gamepad/keyboard navigation state when active; always query mouse.
	var RectOnly                      = AllowWhenBlockedByPopup | AllowWhenBlockedByActiveItem | AllowWhenOverlapped;
	var RootAndChildWindows           = RootWindow | ChildWindows;
}

@:enum abstract ImGuiFocusedFlags(Int) from Int to Int {
	var None : Int = 0;
	var ChildWindows : Int = 1;
	var RootWindow : Int = 2;
	var AnyWindow : Int = 4;
	var RootAndChildWindows : Int = 3;
	var DockHierarchy : Int = 4;
}

@:enum abstract ImGuiDragDropFlags(Int) from Int to Int {
	var None : Int = 0;
	var SourceNoPreviewTooltip : Int = 1;
	var SourceNoDisableHover : Int = 2;
	var SourceNoHoldToOpenOthers : Int = 4;
	var SourceAllowNullID : Int = 8;
	var SourceExtern : Int = 16;
	var SourceAutoExpirePayload : Int = 32;
	var AcceptBeforeDelivery : Int = 1024;
	var AcceptNoDrawDefaultRect : Int = 2048;
	var AcceptNoPreviewTooltip : Int = 4096;
	var AcceptPeekOnly : Int = 3072;
}

@:enum abstract ImGuiDir(Int) from Int to Int {
	var None : Int = -1;
	var Left : Int = 0;
	var Right : Int = 1;
	var Up : Int = 2;
	var Down : Int = 3;
	var COUNT : Int = 4;
}

@:enum abstract ImGuiDataType(Int) from Int to Int {
	var S8 : Int = 0;
	var U8 : Int = 1;
	var S16 : Int = 2;
	var U16 : Int = 3;
	var S32 : Int = 4;
	var U32 : Int = 5;
	var S64 : Int = 6;
	var U64 : Int = 7;
	var Float : Int = 8;
	var Double : Int = 9;
	var COUNT : Int = 10;
}

@:enum abstract ImGuiConfigFlags(Int) from Int to Int {
    var None                   = 0;
    var NavEnableKeyboard      = 1 << 0;   // Master keyboard navigation enable flag. NewFrame() will automatically fill io.NavInputs[] based on io.AddKeyEvent() calls
    var NavEnableGamepad       = 1 << 1;   // Master gamepad navigation enable flag. This is mostly to instruct your imgui backend to fill io.NavInputs[]. Backend also needs to set ImGuiBackendFlags_HasGamepad.
    var NavEnableSetMousePos   = 1 << 2;   // Instruct navigation to move the mouse cursor. May be useful on TV/console systems where moving a virtual mouse is awkward. Will update io.MousePos and set io.WantSetMousePos=true. If enabled you MUST honor io.WantSetMousePos requests in your backend, otherwise ImGui will react as if the mouse is jumping around back and forth.
    var NavNoCaptureKeyboard   = 1 << 3;   // Instruct navigation to not set the io.WantCaptureKeyboard flag when io.NavActive is set.
    var NoMouse                = 1 << 4;   // Instruct imgui to clear mouse position/buttons in NewFrame(). This allows ignoring the mouse information set by the backend.
    var NoMouseCursorChange    = 1 << 5;   // Instruct backend to not alter mouse cursor shape and visibility. Use if the backend cursor changes are interfering with yours and you don't want to use SetMouseCursor() to change mouse cursor. You may want to honor requests from imgui by reading GetMouseCursor() yourself instead.

    // [BETA] Docking
    var DockingEnable          = 1 << 6;   // Docking enable flags.

    // [BETA] Viewports
    // When using viewports it is recommended that your default value for ImGuiCol_WindowBg is opaque (Alpha=1.0) so transition to a viewport won't be noticeable.
    var ViewportsEnable        = 1 << 10;  // Viewport enable flags (require both ImGuiBackendFlags_PlatformHasViewports + ImGuiBackendFlags_RendererHasViewports set by the respective backends)
    var DpiEnableScaleViewports= 1 << 14;  // [BETA: Don't use] FIXME-DPI: Reposition and resize imgui windows when the DpiScale of a viewport changed (mostly useful for the main viewport hosting other window). Note that resizing the main window itself is up to your application.
    var DpiEnableScaleFonts    = 1 << 15;  // [BETA: Don't use] FIXME-DPI: Request bitmap-scaled fonts to match DpiScale. This is a very low-quality workaround. The correct way to handle DPI is _currently_ to replace the atlas and/or fonts in the Platform_OnChangedViewport callback, but this is all early work in progress.

    // User storage (to allow your backend/engine to communicate to code that may be shared between multiple projects. Those flags are not used by core Dear ImGui)
    var IsSRGB                 = 1 << 20;  // Application is SRGB-aware.
    var IsTouchScreen          = 1 << 21;   // Application is using a touch screen instead of a mouse.
}

@:enum abstract ImGuiCond(Int) from Int to Int {
	var Always : Int = 1;
	var Once : Int = 2;
	var FirstUseEver : Int = 4;
	var Appearing : Int = 8;
}

@:enum abstract ImGuiComboFlags(Int) from Int to Int {
	var None : Int = 0;
	var PopupAlignLeft : Int = 1;
	var HeightSmall : Int = 2;
	var HeightRegular : Int = 4;
	var HeightLarge : Int = 8;
	var HeightLargest : Int = 16;
	var NoArrowButton : Int = 32;
	var NoPreview : Int = 64;
	var HeightMask_ : Int = 30;
}

@:enum abstract ImGuiColorEditFlags(Int) from Int to Int {
	var None : Int = 0;
	var NoAlpha : Int = 2;
	var NoPicker : Int = 4;
	var NoOptions : Int = 8;
	var NoSmallPreview : Int = 16;
	var NoInputs : Int = 32;
	var NoTooltip : Int = 64;
	var NoLabel : Int = 128;
	var NoSidePreview : Int = 256;
	var NoDragDrop : Int = 512;
	var AlphaBar : Int = 65536;
	var AlphaPreview : Int = 131072;
	var AlphaPreviewHalf : Int = 262144;
	var HDR : Int = 524288;
	var DisplayRGB : Int = 1048576;
	var DisplayHSV : Int = 2097152;
	var DisplayHex : Int = 4194304;
	var Uint8 : Int = 8388608;
	var Float : Int = 16777216;
	var PickerHueBar : Int = 33554432;
	var PickerHueWheel : Int = 67108864;
	var InputRGB : Int = 134217728;
	var InputHSV : Int = 268435456;
	var _OptionsDefault : Int = 177209344;
	var _DisplayMask : Int = 7340032;
	var _DataTypeMask : Int = 25165824;
	var _PickerMask : Int = 100663296;
	var _InputMask : Int = 402653184;
}

@:enum abstract ImGuiCol(Int) from Int to Int {
	var Text = 0;
	var TextDisabled;
	var WindowBg;
	var ChildBg;
	var PopupBg;
	var Border;
	var BorderShadow;
	var FrameBg;
	var FrameBgHovered;
	var FrameBgActive;
	var TitleBg;
	var TitleBgActive;
	var TitleBgCollapsed;
	var MenuBarBg;
	var ScrollbarBg;
	var ScrollbarGrab;
	var ScrollbarGrabHovered;
	var ScrollbarGrabActive;
	var CheckMark;
	var SliderGrab;
	var SliderGrabActive;
	var Button;
	var ButtonHovered;
	var ButtonActive;
	var Header;
	var HeaderHovered;
	var HeaderActive;
	var Separator;
	var SeparatorHovered;
	var SeparatorActive;
	var ResizeGrip;
	var ResizeGripHovered;
	var ResizeGripActive;
	var Tab;
	var TabHovered;
	var TabActive;
	var TabUnfocused;
	var TabUnfocusedActive;
	var DockingPreview;
	var DockingEmptyBg;
	var PlotLines;
	var PlotLinesHovered;
	var PlotHistogram;
	var PlotHistogramHovered;
	var TableHeaderBg;
	var TableBorderStrong;
	var TableBorderLight;
	var TableRowBg;
	var TableRowBgAlt;
	var TextSelectedBg;
	var DragDropTarget;
	var NavHighlight;
	var NavWindowingHighlight;
	var NavWindowingDimBg;
	var ModalWindowDimBg;
	var COUNT;
}

@:enum abstract ImGuiBackendFlags(Int) from Int to Int {
	var None : Int = 0;
	var HasGamepad : Int = 1;
	var HasMouseCursors : Int = 2;
	var HasSetMousePos : Int = 4;
	var RendererHasVtxOffset : Int = 8;
}

@:enum abstract ImFontAtlasFlags(Int) from Int to Int {
	var None : Int = 0;
	var NoPowerOfTwoHeight : Int = 1;
	var NoMouseCursors : Int = 2;
}

@:enum abstract ImDrawListFlags(Int) from Int to Int {
	var None : Int = 0;
	var AntiAliasedLines : Int = 1;
	var AntiAliasedFill : Int = 2;
	var AllowVtxOffset : Int = 4;
}

@:enum abstract ImGuiSliderFlags(Int) from Int to Int {
	var None : Int = 0;
	var AlwaysClamp : Int = 16; // Clamp value to min/max bounds when input manually with CTRL+Click. By default CTRL+Click allows going out of bounds.
	var Logarithmic : Int = 32; // Make the widget logarithmic (linear otherwise). Consider using ImGuiSliderFlags_NoRoundToFormat with this if using a format-string with small amount of digits.
	var NoRoundToFormat : Int = 64; // Disable rounding underlying value to match precision of the display format string (e.g. %.3f values are rounded to those 3 digits)
	var NoInput : Int = 128; // Disable CTRL+Click or Enter key allowing to input text directly into the widget
}

@:enum abstract ImGuiTableFlags(Int) from Int to Int {
	var None                       = 0;
    var Resizable                  = 1 << 0;   // Enable resizing columns.
    var Reorderable                = 1 << 1;   // Enable reordering columns in header row (need calling TableSetupColumn() + TableHeadersRow() to display headers)
    var Hideable                   = 1 << 2;   // Enable hiding/disabling columns in context menu.
    var Sortable                   = 1 << 3;   // Enable sorting. Call TableGetSortSpecs() to obtain sort specs. Also see var SortMulti and var SortTristate.
    var NoSavedSettings            = 1 << 4;   // Disable persisting columns order; width and sort settings in the .ini file.
    var ContextMenuInBody          = 1 << 5;   // Right-click on columns body/contents will display table context menu. By default it is available in TableHeadersRow().
    // Decorations
    var RowBg                      = 1 << 6;   // Set each RowBg color with ImGuiCol_TableRowBg or ImGuiCol_TableRowBgAlt (equivalent of calling TableSetBgColor with ImGuiTableBgFlags_RowBg0 on each row manually)
    var BordersInnerH              = 1 << 7;   // Draw horizontal borders between rows.
    var BordersOuterH              = 1 << 8;   // Draw horizontal borders at the top and bottom.
    var BordersInnerV              = 1 << 9;   // Draw vertical borders between columns.
    var BordersOuterV              = 1 << 10;  // Draw vertical borders on the left and right sides.
    var BordersH                   = BordersInnerH | BordersOuterH; // Draw horizontal borders.
    var BordersV                   = BordersInnerV | BordersOuterV; // Draw vertical borders.
    var BordersInner               = BordersInnerV | BordersInnerH; // Draw inner borders.
    var BordersOuter               = BordersOuterV | BordersOuterH; // Draw outer borders.
    var Borders                    = BordersInner | BordersOuter;   // Draw all borders.
    var NoBordersInBody            = 1 << 11;  // [ALPHA] Disable vertical borders in columns Body (borders will always appears in Headers). -> May move to style
    var NoBordersInBodyUntilResize = 1 << 12;  // [ALPHA] Disable vertical borders in columns Body until hovered for resize (borders will always appears in Headers). -> May move to style
    // Sizing Policy (read above for defaults)
    var SizingFixedFit             = 1 << 13;  // Columns default to _WidthFixed or _WidthAuto (if resizable or not resizable); matching contents width.
    var SizingFixedSame            = 2 << 13;  // Columns default to _WidthFixed or _WidthAuto (if resizable or not resizable); matching the maximum contents width of all columns. Implicitly enable var NoKeepColumnsVisible.
    var SizingStretchProp          = 3 << 13;  // Columns default to _WidthStretch with default weights proportional to each columns contents widths.
    var SizingStretchSame          = 4 << 13;  // Columns default to _WidthStretch with default weights all equal; unless overridden by TableSetupColumn().
    // Sizing Extra Options
    var NoHostExtendX              = 1 << 16;  // Make outer width auto-fit to columns; overriding outer_size.x value. Only available when ScrollX/ScrollY are disabled and Stretch columns are not used.
    var NoHostExtendY              = 1 << 17;  // Make outer height stop exactly at outer_size.y (prevent auto-extending table past the limit). Only available when ScrollX/ScrollY are disabled. Data below the limit will be clipped and not visible.
    var NoKeepColumnsVisible       = 1 << 18;  // Disable keeping column always minimally visible when ScrollX is off and table gets too small. Not recommended if columns are resizable.
    var PreciseWidths              = 1 << 19;  // Disable distributing remainder width to stretched columns (width allocation on a 100-wide table with 3 columns: Without this flag: 33;33;34. With this flag: 33;33;33). With larger number of columns; resizing will appear to be less smooth.
    // Clipping
    var NoClip                     = 1 << 20;  // Disable clipping rectangle for every individual columns (reduce draw command count; items will be able to overflow into other columns). Generally incompatible with TableSetupScrollFreeze().
    // Padding
    var PadOuterX                  = 1 << 21;  // Default if BordersOuterV is on. Enable outer-most padding. Generally desirable if you have headers.
    var NoPadOuterX                = 1 << 22;  // Default if BordersOuterV is off. Disable outer-most padding.
    var NoPadInnerX                = 1 << 23;  // Disable inner padding between columns (double inner padding if BordersOuterV is on; single inner padding if BordersOuterV is off).
    // Scrolling
    var ScrollX                    = 1 << 24;  // Enable horizontal scrolling. Require 'outer_size' parameter of BeginTable() to specify the container size. Changes default sizing policy. Because this create a child window; ScrollY is currently generally recommended when using ScrollX.
    var ScrollY                    = 1 << 25;  // Enable vertical scrolling. Require 'outer_size' parameter of BeginTable() to specify the container size.
    // Sorting
    var SortMulti                  = 1 << 26;  // Hold shift when clicking headers to sort on multiple column. TableGetSortSpecs() may return specs where (SpecsCount > 1).
    var SortTristate               = 1 << 27;  // Allow no sorting; disable default sorting. TableGetSortSpecs() may return specs where (SpecsCount == 0).
}

@:enum abstract ImGuiTableRowFlags(Int) from Int to Int {
    var None                         = 0;
    var Headers                      = 1 << 0;    // Identify header row (set default background color + width of its contents accounted differently for auto column width)
}

@:enum abstract ImGuiTableBgTarget(Int) from Int to Int {
    var None                         = 0;
    var RowBg0                       = 1;        // Set row background color 0 (generally used for background, automatically set when ImGuiTableFlags_RowBg is used)
    var RowBg1                       = 2;        // Set row background color 1 (generally used for selection marking)
    var CellBg                       = 3;        // Set cell background color (top-most color)
}

@:enum abstract ImGuiTableColumnFlags(Int) from Int to Int {
    // Input configuration flags
    var None                  = 0;
    var Disabled              = 1 << 0;   // Overriding/master disable flag: hide column; won't show in context menu (unlike calling TableSetColumnEnabled() which manipulates the user accessible state)
    var DefaultHide           = 1 << 1;   // Default as a hidden/disabled column.
    var DefaultSort           = 1 << 2;   // Default as a sorting column.
    var WidthStretch          = 1 << 3;   // Column will stretch. Preferable with horizontal scrolling disabled (default if table sizing policy is _SizingStretchSame or _SizingStretchProp).
    var WidthFixed            = 1 << 4;   // Column will not stretch. Preferable with horizontal scrolling enabled (default if table sizing policy is _SizingFixedFit and table is resizable).
    var NoResize              = 1 << 5;   // Disable manual resizing.
    var NoReorder             = 1 << 6;   // Disable manual reordering this column; this will also prevent other columns from crossing over this column.
    var NoHide                = 1 << 7;   // Disable ability to hide/disable this column.
    var NoClip                = 1 << 8;   // Disable clipping for this column (all NoClip columns will render in a same draw command).
    var NoSort                = 1 << 9;   // Disable ability to sort on this field (even if ImGuiTableFlags_Sortable is set on the table).
    var NoSortAscending       = 1 << 10;  // Disable ability to sort in the ascending direction.
    var NoSortDescending      = 1 << 11;  // Disable ability to sort in the descending direction.
    var NoHeaderLabel         = 1 << 12;  // TableHeadersRow() will not submit label for this column. Convenient for some small columns. Name will still appear in context menu.
    var NoHeaderWidth         = 1 << 13;  // Disable header text width contribution to automatic column width.
    var PreferSortAscending   = 1 << 14;  // Make the initial sort direction Ascending when first sorting on this column (default).
    var PreferSortDescending  = 1 << 15;  // Make the initial sort direction Descending when first sorting on this column.
    var IndentEnable          = 1 << 16;  // Use current Indent value when entering cell (default for column 0).
    var IndentDisable         = 1 << 17;  // Ignore current Indent value when entering cell (default for columns > 0). Indentation changes _within_ the cell will still be honored.

    // Output status flags; read-only via TableGetColumnFlags()
    var IsEnabled             = 1 << 24;  // Status: is enabled == not hidden by user/api (referred to as "Hide" in _DefaultHide and _NoHide) flags.
    var IsVisible             = 1 << 25;  // Status: is visible == is enabled AND not clipped by scrolling.
    var IsSorted              = 1 << 26;  // Status: is currently part of the sort specs
    var IsHovered             = 1 << 27;  // Status: is hovered by mouse

}

// Flags for ImDrawList functions
// (Legacy: bit 0 must always correspond to ImDrawFlags_Closed to be backward compatible with old API using a bool. Bits 1..3 must be unused)
@:enum abstract ImDrawFlags(Int) from Int to Int {
    var None                        = 0;
    var Closed                      = 1 << 0; // PathStroke(); AddPolyline(): specify that shape should be closed (Important: this is always == 1 for legacy reason)
    var RoundCornersTopLeft         = 1 << 4; // AddRect(); AddRectFilled(); PathRect(): enable rounding top-left corner only (when rounding > 0.0f; we default to all corners). Was 0x01.
    var RoundCornersTopRight        = 1 << 5; // AddRect(); AddRectFilled(); PathRect(): enable rounding top-right corner only (when rounding > 0.0f; we default to all corners). Was 0x02.
    var RoundCornersBottomLeft      = 1 << 6; // AddRect(); AddRectFilled(); PathRect(): enable rounding bottom-left corner only (when rounding > 0.0f; we default to all corners). Was 0x04.
    var RoundCornersBottomRight     = 1 << 7; // AddRect(); AddRectFilled(); PathRect(): enable rounding bottom-right corner only (when rounding > 0.0f; we default to all corners). Wax 0x08.
    var RoundCornersNone            = 1 << 8; // AddRect(); AddRectFilled(); PathRect(): disable rounding on all corners (when rounding > 0.0f). This is NOT zero; NOT an implicit flag!
    var RoundCornersTop             = RoundCornersTopLeft | RoundCornersTopRight;
    var RoundCornersBottom          = RoundCornersBottomLeft | RoundCornersBottomRight;
    var RoundCornersLeft            = RoundCornersBottomLeft | RoundCornersTopLeft;
    var RoundCornersRight           = RoundCornersBottomRight | RoundCornersTopRight;
    var RoundCornersAll             = RoundCornersTopLeft | RoundCornersTopRight | RoundCornersBottomLeft | RoundCornersBottomRight;
    var RoundCornersDefault_        = RoundCornersAll; // Default to ALL corners if none of the _RoundCornersXX flags are specified.
    var RoundCornersMask_           = RoundCornersAll | RoundCornersNone;
}

typedef ImEvents = {
	dt : Single,
	mouse_x : Single,
	mouse_y : Single,
	wheel : Single,
	left_click : Bool,
	right_click : Bool,
	shift : Bool,
	ctrl : Bool,
	alt : Bool
}

// In reality it's h3d.mat.Texture, but HL really dislike passing instances
// directly for some reason.
#if heaps
abstract ImTextureID(Dynamic) from h3d.mat.Texture to h3d.mat.Texture {}
// To avoid allocation of unecessary things - cache and reuse some instances.
private class ImTypeCache {

	public static var imVec2: Array<ImVec2Impl> = [
		{ x: 0, y: 0 },
		{ x: 0, y: 0 },
		{ x: 0, y: 0 },
		{ x: 0, y: 0 },
	];

}
@:structInit
private class ImVec2Impl {
	public var x: Single;
	public var y: Single;
	public inline function set(x: Single, y: Single) {
		this.x = x;
		this.y = y;
		return this;
	}
}
#else
typedef ImTextureID = Dynamic;
#end
typedef ImU32 = Int;
typedef ImGuiID = Int;

typedef ImVec2 = {
	x : Single,
	y : Single
}

typedef ImVec4 = {
	x : Single,
	y : Single,
	z : Single,
	w : Single
}

@:build(imgui._ImGuiInternalMacro.buildFlatStruct())
@:hlNative("hlimgui")
@:struct class ImGuiStyle {
	var Alpha: Single;                      // Global alpha applies to everything in Dear ImGui.
	var DisabledAlpha: Single;              // Additional alpha multiplier applied by BeginDisabled(). Multiply over current value of Alpha.
	@:flatten var WindowPadding: ImVec2;              // Padding within a window.
	var WindowRounding: Single;             // Radius of window corners rounding. Set to 0.0f to have rectangular windows. Large values tend to lead to variety of artifacts and are not recommended.
	var WindowBorderSize: Single;           // Thickness of border around windows. Generally set to 0.0f or 1.0f. (Other values are not well tested and more CPU/GPU costly).
	@:flatten var WindowMinSize: ImVec2;              // Minimum window size. This is a global setting. If you want to constraint individual windows, use SetNextWindowSizeConstraints().
	@:flatten var WindowTitleAlign: ImVec2;           // Alignment for title bar text. Defaults to (0.0f,0.5f) for left-aligned,vertically centered.
	var WindowMenuButtonPosition: ImGuiDir;   // Side of the collapsing/docking button in the title bar (None/Left/Right). Defaults to ImGuiDir_Left.
	var ChildRounding: Single;              // Radius of child window corners rounding. Set to 0.0f to have rectangular windows.
	var ChildBorderSize: Single;            // Thickness of border around child windows. Generally set to 0.0f or 1.0f. (Other values are not well tested and more CPU/GPU costly).
	var PopupRounding: Single;              // Radius of popup window corners rounding. (Note that tooltip windows use WindowRounding)
	var PopupBorderSize: Single;            // Thickness of border around popup/tooltip windows. Generally set to 0.0f or 1.0f. (Other values are not well tested and more CPU/GPU costly).
	@:flatten var FramePadding: ImVec2;               // Padding within a framed rectangle (used by most widgets).
	var FrameRounding: Single;              // Radius of frame corners rounding. Set to 0.0f to have rectangular frame (used by most widgets).
	var FrameBorderSize: Single;            // Thickness of border around frames. Generally set to 0.0f or 1.0f. (Other values are not well tested and more CPU/GPU costly).
	@:flatten var ItemSpacing: ImVec2;                // Horizontal and vertical spacing between widgets/lines.
	@:flatten var ItemInnerSpacing: ImVec2;           // Horizontal and vertical spacing between within elements of a composed widget (e.g. a slider and its label).
	@:flatten var CellPadding: ImVec2;                // Padding within a table cell
	@:flatten var TouchExtraPadding: ImVec2;          // Expand reactive bounding box for touch-based system where touch position is not accurate enough. Unfortunately we don't sort widgets so priority on overlap will always be given to the first widget. So don't grow this too much!
	var IndentSpacing: Single;              // Horizontal indentation when e.g. entering a tree node. Generally == (FontSize + FramePadding.x*2).
	var ColumnsMinSpacing: Single;          // Minimum horizontal spacing between two columns. Preferably > (FramePadding.x + 1).
	var ScrollbarSize: Single;              // Width of the vertical scrollbar, Height of the horizontal scrollbar.
	var ScrollbarRounding: Single;          // Radius of grab corners for scrollbar.
	var GrabMinSize: Single;                // Minimum width/height of a grab box for slider/scrollbar.
	var GrabRounding: Single;               // Radius of grabs corners rounding. Set to 0.0f to have rectangular slider grabs.
	var LogSliderDeadzone: Single;          // The size in pixels of the dead-zone around zero on logarithmic sliders that cross zero.
	var TabRounding: Single;                // Radius of upper corners of a tab. Set to 0.0f to have rectangular tabs.
	var TabBorderSize: Single;              // Thickness of border around tabs.
	var TabMinWidthForCloseButton: Single;  // Minimum width for close button to appears on an unselected tab when hovered. Set to 0.0f to always show when hovering, set to FLT_MAX to never show close button unless selected.
	var ColorButtonPosition: ImGuiDir;        // Side of the color button in the ColorEdit4 widget (left/right). Defaults to ImGuiDir_Right.
	@:flatten var ButtonTextAlign: ImVec2;            // Alignment of button text when button is larger than text. Defaults to (0.5f, 0.5f) (centered).
	@:flatten var SelectableTextAlign: ImVec2;        // Alignment of selectable text. Defaults to (0.0f, 0.0f) (top-left aligned). It's generally important to keep this left-aligned if you want to lay multiple items on a same line.
	@:flatten var DisplayWindowPadding: ImVec2;       // Window position are clamped to be visible within the display area or monitors by at least this amount. Only applies to regular windows.
	@:flatten var DisplaySafeAreaPadding: ImVec2;     // If you cannot see the edges of your screen (e.g. on a TV) increase the safe area padding. Apply to popups/tooltips as well regular windows. NB: Prefer configuring your TV sets correctly!
	var MouseCursorScale: Single;           // Scale software rendered mouse cursor (when io.MouseDrawCursor is enabled). We apply per-monitor DPI scaling over this scale. May be removed later.
	var AntiAliasedLines: Bool;           // Enable anti-aliased lines/borders. Disable if you are really tight on CPU/GPU. Latched at the beginning of the frame (copied to ImDrawList).
	var AntiAliasedLinesUseTex: Bool;     // Enable anti-aliased lines/borders using textures where possible. Require backend to render with bilinear filtering. Latched at the beginning of the frame (copied to ImDrawList).
	var AntiAliasedFill: Bool;            // Enable anti-aliased edges around filled shapes (rounded rectangles, circles, etc.). Disable if you are really tight on CPU/GPU. Latched at the beginning of the frame (copied to ImDrawList).
	var CurveTessellationTol: Single;       // Tessellation tolerance when using PathBezierCurveTo() without a specific number of segments. Decrease for highly tessellated curves (higher quality, more polygons), increase to reduce quality.
	var CircleTessellationMaxError: Single; // Maximum error (in pixels) allowed when using AddCircle()/AddCircleFilled() or drawing rounded corner rectangles with no explicit segment count specified. Decrease for higher quality but more geometry.
	@:flattenMap(ImGuiCol) var Colors : ImVec4;

	public function new() {
		// Match allocation via C: Set default values andn use default colors.
		init_style(this);
	}

	public function scaleAllSizes( scaleFactor: Single ) { style_scale_all_sizes(this, scaleFactor); }

	static function init_style(style: ImGuiStyle) {}
	static function style_scale_all_sizes(style: ImGuiStyle, scaleFactor: Single): Void {}
}

/**
 * ImFontConfig
 * Currently we don't support passing this struct back into haxe on creation; so it's current definition
 * and use cases are limited to configuring a font you're about to create.
 *
 * As a technical note, glypgRanges will currently leak memory, so avoid paths which use this feature per frame.
 */
 @:structInit
class ImFontConfig
{
	var OversampleH: Int = 3;						// Rasterize at higher quality for sub-pixel positioning. Read https://github.com/nothings/stb/blob/master/tests/oversample/README.md for details.
	var OversampleV: Int = 1;						// Rasterize at higher quality for sub-pixel positioning. We don't use sub-pixel positions on the Y axis.// Rasterize at higher quality for sub-pixel positioning. We don't use sub-pixel positions on the Y axis.
	var PixelSnapH: Bool = false;					// Align every glyph to pixel boundary. Useful e.g. if you are merging a non-pixel aligned font with the default font. If enabled, you can set OversampleH/V to 1.
	var GlyphExtraSpacing: ImVec2 = {x: 0, y:0};	// Extra spacing (in pixels) between glyphs. Only X axis is supported for now.
	var GlyphOffset: ImVec2 =  {x: 0, y:0};			// Offset all glyphs from this font input.
	var GlyphRanges: hl.NativeArray<hl.UI16> = null;// Pointer to a user-provided list of Unicode range (2 value per range, values are inclusive, zero-terminated list). THE ARRAY DATA NEEDS TO PERSIST AS LONG AS THE FONT IS ALIVE, currently this will just leak.
	var GlyphMinAdvanceX: Single = 0;				// Minimum AdvanceX for glyphs, set Min to align font icons, set both Min/Max to enforce mono-space font
	var GlyphMaxAdvanceX: Single = 3.402823E+38;	// FLT_MAX  // Maximum AdvanceX for glyphs
	var MergeMode: Bool = false;					// Merge into previous ImFont, so you can combine multiple inputs font into one ImFont (e.g. ASCII font + icons + Japanese glyphs). You may want to use GlyphOffset.y when merge font of different heights.
	var RasterizerFlags: Int = 0;					// Settings for custom font rasterizer (e.g. ImGuiFreeType). Leave as zero if you aren't using one.
	var RasterizerMultiply: Single = 1;				// Brighten (>1.0f) or darken (<1.0f) font output. Brightening small fonts may be a good workaround to make them more readable.
	var EllipsisChar: Int = -1;						// Explicitly specify unicode codepoint of ellipsis character. When fonts are being merged first specified ellipsis will be used.
}

private typedef ImFontPtr = hl.Abstract<"imfont">;
private typedef ImDrawListPtr = hl.Abstract<"imdrawlist">;
private typedef ImStateStoragePtr = hl.Abstract<"imstatestorage">;
private typedef ImContextPtr = hl.Abstract<"imcontext">;
private typedef ImDragDropPayloadPtr = hl.Abstract<"imdnd">;
private typedef ImGuiDockNode = hl.Abstract<"imguidocknode">;

// Callbacks

/**
	@return `0` for success of the callback.
**/
typedef ImGuiInputTextCallbackDataFunc = ( ImGuiInputTextCallbackData ) -> Int;

@:struct @:hlNative("hlimgui")
class ImGuiInputTextCallbackData
{

	public var eventFlag: ImGuiInputTextFlags; // One ImGuiInputTextFlags_Callback*    // Read-only
	public var flags: ImGuiInputTextFlags;     // What user passed to InputText()      // Read-only
	public var unused: Int;                    // Used internally for callback
	
	public var eventChar: hl.UI16;             // Character input                      // Read-write   // [CharFilter] Replace character with another one, or set to zero to drop. return 1 is equivalent to setting EventChar=0;
	public var eventKey: Int;                  // Key pressed (Up/Down/TAB)            // Read-only    // [Completion,History]
	public var buf: hl.Bytes;                  // Text buffer                          // Read-write   // [Resize] Can replace pointer / [Completion,History,Always] Only write to pointed data, don't replace the actual pointer!
	public var bufTextLen: Int;                // Text length (in bytes)               // Read-write   // [Resize,Completion,History,Always] Exclude zero-terminator storage. In C land: == strlen(some_text), in C++ land: string.length()
	public var bufSize: Int;                   // Buffer size (in bytes) = capacity+1  // Read-only    // [Resize,Completion,History,Always] Include zero-terminator storage. In C land == ARRAYSIZE(my_char_array), in C++ land: string.capacity()+1
	public var bufDirty: Bool;                 // Set if you modify Buf/BufTextLen!    // Write        // [Completion,History,Always]
	public var cursorPos: Int;                 //                                      // Read-write   // [Completion,History,Always]
	public var selectionStart: Int;            //                                      // Read-write   // [Completion,History,Always] == to SelectionEnd when no selection)
	public var selectionEnd: Int;              //                                      // Read-write   // [Completion,History,Always]
	
	/** Helper method to calculate byte position of a character at position `pos` in Unicode string.**/
	public function utfCharPos(pos: Int, startAt: Int = 0): Int
	{
		var i = startAt;
		var p = 0;
		while (++p < pos)
		{
			var c = buf[i];
			if (c < 0x80)
			{
				if (c == 0) return i;
				i++;
			}
			else if (c < 0xC0) return i;
			else if (c < 0xE0)
			{
				if ((buf[i+1]&0x80) == 0) return i;
				i += 2;
			}
			else if (c < 0xF0)
			{
				if ((buf[i+1]&buf[i+2]&0x80) == 0) return i;
				i += 3;
			}
			else if (c < 0xF8)
			{
				if ((buf[i+1]&buf[i+2]&buf[i+3]&0x80) == 0) return i;
				p++;
				i += 4;
			} else return i;
		}
		return i;
	}
	/**
		Helper method to delete N UTF-8 characters instead of N bytes
		@param pos The character position inside the string. (Not byte position)
		@param charCount The amount of UTF-8 character to delete. Pass -1 to delete everything past `pos`.
	**/
	public function deleteCharsUnicode(pos: Int, charCount: Int)
	{
		pos = utfCharPos(pos);
		if (charCount == -1)
		{
			deleteChars(pos, bufTextLen - pos);
			return;
		}
		deleteChars(pos, utfCharPos(charCount, pos));
	}
	
	/**
		Helper method to insert `text` at the UTF-8 character position instead of byte position.
	**/
	public function insertCharsUnicode(pos: Int, text: String)
	{
		insertChars(utfCharPos(pos), text);
	}
	/** Deletes `bytesCount` bytes starting at `pos` position from the text buffer. **/
	public inline function deleteChars(pos: Int, bytesCount: Int) input_text_callback_delete_chars(this, pos, bytesCount);
	/** Inserts `text` at `pos` byte position in the text buffer. **/
	public inline function insertChars(pos: Int, text: String) input_text_callback_insert_chars(this, pos, text);
	public function selectAll()			{ selectionStart = 0; selectionEnd = bufTextLen; }
	public function clearSelection() 	{ selectionStart = selectionEnd = bufTextLen; }
	public function hasSelection() 		{ return selectionStart != selectionEnd; }
	
	static function input_text_callback_delete_chars(data:ImGuiInputTextCallbackData, pos: Int, bytes_count: Int) {}
	static function input_text_callback_insert_chars(data:ImGuiInputTextCallbackData, pos: Int, text: String) {}
}


@:hlNative("hlimgui")
abstract ImDrawList(ImDrawListPtr) from ImDrawListPtr to ImDrawListPtr
{
	public function new(ptr: ImDrawListPtr) { this = ptr; }

	public function addLine( p1: ImVec2, p2: ImVec2, col: ImU32, thickness: Single = 1.0 ) { drawlist_add_line( this, p1, p2, col, thickness ); }
	public function addRect( pMin: ImVec2, pMax: ImVec2, col: ImU32, rounding: Single = 0.0, roundingCorners: ImDrawFlags = ImDrawFlags.None, thickness: Single = 1.0 ) { drawlist_add_rect( this, pMin, pMax, col, rounding, roundingCorners, thickness ); }
	public function addRectFilled( pMin: ImVec2, pMax: ImVec2, col: ImU32, rounding: Single = 0.0, roundingCorners: ImDrawFlags = ImDrawFlags.None ) { drawlist_add_rect_filled( this, pMin, pMax, col, rounding, roundingCorners); }
	public function addRectFilledMultiColor( pMin: ExtDynamic<ImVec2>, pMax: ExtDynamic<ImVec2>, col_upr_left: ImU32, col_upr_right: ImU32, col_bot_right: ImU32, col_bot_left: ImU32 ) { drawlist_add_rect_filled_multicolor( this, pMin, pMax, col_upr_left, col_upr_right, col_bot_right, col_bot_left ); }
	public function addQuad( p1: ExtDynamic<ImVec2>, p2: ExtDynamic<ImVec2>, p3: ExtDynamic<ImVec2>, p4: ExtDynamic<ImVec2>, col: ImU32, thickness: Single = 1.0 ) { drawlist_add_quad(this, p1, p2, p3, p4, col, thickness ); }
	public function addQuadFilled( p1: ExtDynamic<ImVec2>, p2: ExtDynamic<ImVec2>, p3: ExtDynamic<ImVec2>, p4: ExtDynamic<ImVec2>, col: ImU32 ) { drawlist_add_quad_filled( this, p1, p2, p3, p4, col ); }
	public function addTriangle( p1: ExtDynamic<ImVec2>, p2: ExtDynamic<ImVec2>, p3: ExtDynamic<ImVec2>, col: ImU32, thickness: Single = 1.0 ) { drawlist_add_triangle(this, p1, p2, p3, col, thickness ); }
	public function addTriangleFilled( p1: ExtDynamic<ImVec2>, p2: ExtDynamic<ImVec2>, p3: ExtDynamic<ImVec2>, col: ImU32 ) { drawlist_add_triangle_filled(this, p1, p2, p3, col ); }
	public function addCircle( center: ExtDynamic<ImVec2>, radius: Single, col: ImU32, num_segments: Int = 0, thickness: Single = 1.0 ) { drawlist_add_circle( this, center, radius, col, num_segments, thickness ); }
	public function addCircleFilled( center: ExtDynamic<ImVec2>, radius: Single, col: ImU32, num_segments: Int = 0) { drawlist_add_circle_filled(this, center, radius, col, num_segments ); }
	public function addNgon( center: ExtDynamic<ImVec2>, radius: Single, col: ImU32, num_segments: Int, thickness: Single = 1.0 ) { drawlist_add_ngon(this, center, radius, col, num_segments, thickness ); }
	public function addNgonFilled( center: ExtDynamic<ImVec2>, radius: Single, col: ImU32, num_segments: Int = 0) { drawlist_add_ngon_filled(this, center, radius, col, num_segments ); }
	//public function addPolyLine( points: hl.NativeArray<ImVec2>, col: ImU32, closed: Bool, thickness: Single = 1.0 ) { drawlist_add_poly_line(this, points, col, closed, thickness ); }
	//public function addConvexPolyFilled( points: hl.NativeArray<ExtDynamic<ImVec2>>, col: ImU32 ) { drawlist_add_convex_poly_filled(this, points, col ); }
	public function addBezierCurve( p1: ExtDynamic<ImVec2>, p2: ExtDynamic<ImVec2>, p3: ExtDynamic<ImVec2>, p4: ExtDynamic<ImVec2>, col: ImU32, thickness: Single = 1.0, num_segments: Int = 0 ) { drawlist_add_bezier_curve(this, p1, p2, p3, p4, col, thickness, num_segments ); }
	//
	public function addText( pos: ImVec2, col: ImU32, text: String ) { drawlist_add_text(this, pos, col, text); }
	public function addText2( font: ImFont, fontSize: Single, pos: ImVec2, col: ImU32, text: String, wrapWidth: Single = 0.0, ?cpuFineClipRect: ImVec4 ) { drawlist_add_text2(this, font==null?null:(@:privateAccess font.ptr), fontSize, pos, col, text, wrapWidth, cpuFineClipRect); }

	public function addImage( userTextureId: ImTextureID, pMin: ImVec2, pMax: ImVec2, ?uvMin: ImVec2, ?uvMax: ImVec2, col: Int = 0xffffffff ) { drawlist_add_image(this, userTextureId, pMin, pMax, uvMin, uvMax, col); }
	public function addImageQuad( userTextureId: ImTextureID, p1: ImVec2, p2: ImVec2, p3: ImVec2, p4: ImVec2, ?uv1: ImVec2, ?uv2: ImVec2, ?uv3: ImVec2, ?uv4: ImVec2, col: Int = 0xffffffff ) { drawlist_add_image_quad(this, userTextureId, p1, p2, p3, p4, uv1, uv2, uv3, uv4, col); }
	// Due to Haxe limitation on defualt parameters being "constant" and enum abstract values that rely on previous enum abstract value (A | B) are not "constant" - hack with -1
	public function addImageRounded( userTextureId: ImTextureID, pMin: ImVec2, pMax: ImVec2, ?uvMin: ImVec2, ?uvMax: ImVec2, col: Int, rounding: Single, roundingCorners: ImDrawFlags = -1 ) { drawlist_add_image_rounded(this, userTextureId, pMin, pMax, uvMin, uvMax, col, rounding, roundingCorners == -1 ? ImDrawFlags.RoundCornersDefault_ : roundingCorners); }

	#if heaps
	// Helper methods for Heaps: Use Tile instead of Texture to pass image segments easily.

	public inline function addTile( tile: h2d.Tile, pMin: ImVec2, pMax: ImVec2, col: Int = 0xffffffff, honorDxDy = false) @:privateAccess {
		if (honorDxDy) {
			pMin.x += tile.dx;
			pMin.y += tile.dy;
			pMax.x += tile.dx;
			pMax.y += tile.dy;
		}
		addImage(tile.getTexture(), pMin, pMax, ImTypeCache.imVec2[0].set(tile.u, tile.v), ImTypeCache.imVec2[1].set(tile.u2, tile.v2), col);
	}

	public inline function addTileQuad( tile: h2d.Tile, p1: ImVec2, p2: ImVec2, p3: ImVec2, p4: ImVec2, col: Int = 0xffffffff) @:privateAccess {
		addImageQuad( tile.getTexture(), p1, p2, p3, p4,
			ImTypeCache.imVec2[0].set(tile.u, tile.v), ImTypeCache.imVec2[1].set(tile.u2, tile.v), ImTypeCache.imVec2[2].set(tile.u2, tile.v2), ImTypeCache.imVec2[3].set(tile.u2, tile.v),
			col
		);
	}

	public inline function addTileRounded( tile: h2d.Tile, pMin: ImVec2, pMax: ImVec2, col: Int, rounding: Single, roundingCorners: ImDrawFlags = -1, honorDxDy = false ) @:privateAccess {
		if (honorDxDy) {
			pMin.x += tile.dx;
			pMin.y += tile.dy;
			pMax.x += tile.dx;
			pMax.y += tile.dy;
		}
		addImageRounded( tile.getTexture(), pMin, pMax, ImTypeCache.imVec2[0].set(tile.u, tile.v), ImTypeCache.imVec2[1].set(tile.u2, tile.v2), col, rounding, roundingCorners);
	}
	#end

	static function drawlist_add_line( drawlist: ImDrawListPtr, p1: ExtDynamic<ImVec2>, p2: ExtDynamic<ImVec2>, col: ImU32, thickness: Single ) {}
	static function drawlist_add_rect( drawlist: ImDrawListPtr, pMin: ExtDynamic<ImVec2>, pMax: ExtDynamic<ImVec2>, col: ImU32, rounding: Single, roundingCorners: ImDrawFlags, thickness ) {}
	static function drawlist_add_rect_filled( drawlist: ImDrawListPtr, pMin: ExtDynamic<ImVec2>, pMax: ExtDynamic<ImVec2>, col: ImU32, rounding: Single, roundingCorners: ImDrawFlags ) {}
	static function drawlist_add_rect_filled_multicolor( drawlist: ImDrawListPtr, pMin: ExtDynamic<ImVec2>, pMax: ExtDynamic<ImVec2>, col_upr_left: ImU32, col_upr_right: ImU32, col_bot_right: ImU32, col_bot_left: ImU32 ) {}
	static function drawlist_add_quad( drawlist: ImDrawListPtr, p1: ExtDynamic<ImVec2>, p2: ExtDynamic<ImVec2>, p3: ExtDynamic<ImVec2>, p4: ExtDynamic<ImVec2>, col: ImU32, thickness: Single ) {}
	static function drawlist_add_quad_filled( drawlist: ImDrawListPtr, p1: ExtDynamic<ImVec2>, p2: ExtDynamic<ImVec2>, p3: ExtDynamic<ImVec2>, p4: ExtDynamic<ImVec2>, col: ImU32 ) {}
	static function drawlist_add_triangle( drawlist: ImDrawListPtr, p1: ExtDynamic<ImVec2>, p2: ExtDynamic<ImVec2>, p3: ExtDynamic<ImVec2>, col: ImU32, thickness: Single ) {}
	static function drawlist_add_triangle_filled( drawlist: ImDrawListPtr, p1: ExtDynamic<ImVec2>, p2: ExtDynamic<ImVec2>, p3: ExtDynamic<ImVec2>, col: ImU32 ) {}
	static function drawlist_add_circle( drawlist: ImDrawListPtr, center: ExtDynamic<ImVec2>, radius: Single, col: ImU32, num_segments: Int, thickness: Single ) {}
	static function drawlist_add_circle_filled( drawlist: ImDrawListPtr, center: ExtDynamic<ImVec2>, radius: Single, col: ImU32, num_segments: Int) {}
	static function drawlist_add_ngon( drawlist: ImDrawListPtr, center: ExtDynamic<ImVec2>, radius: Single, col: ImU32, num_segments: Int, thickness: Single ) {}
	static function drawlist_add_ngon_filled( drawlist: ImDrawListPtr, center: ExtDynamic<ImVec2>, radius: Single, col: ImU32, num_segments: Int) {}
	static function drawlist_add_poly_line( drawlist: ImDrawListPtr, points: hl.NativeArray<ImVec2>, col: ImU32, closed: Bool, thickness: Single ) {}
	static function drawlist_add_convex_poly_filled( drawlist: ImDrawListPtr, points: hl.NativeArray<ExtDynamic<ImVec2>>, col: ImU32 ) {}
	static function drawlist_add_bezier_curve( drawlist: ImDrawListPtr, p1: ExtDynamic<ImVec2>, p2: ExtDynamic<ImVec2>, p3: ExtDynamic<ImVec2>, p4: ExtDynamic<ImVec2>, col: ImU32, thickness: Single, num_segments: Int ) {}
	static function drawlist_add_text( drawlist: ImDrawListPtr, pos: ExtDynamic<ImVec2>, col: ImU32, text: String ) {}
	static function drawlist_add_text2( drawlist: ImDrawListPtr, font: ImFontPtr, font_size: Single, pos: ExtDynamic<ImVec2>, col: ImU32, text: String, wrap_width: Single, cpu_fine_clip_rect: ExtDynamic<ImVec4> ) {}

	static function drawlist_add_image( drawlist: ImDrawListPtr, userTextureId: ImTextureID, pMin: ExtDynamic<ImVec2>, pMax: ExtDynamic<ImVec2>, uvMin: ExtDynamic<ImVec2>, uvMax: ExtDynamic<ImVec2>, col: ImU32 ) {}
	static function drawlist_add_image_quad( drawlist: ImDrawListPtr, userTextureId: ImTextureID, p1: ExtDynamic<ImVec2>, p2: ExtDynamic<ImVec2>, p3: ExtDynamic<ImVec2>, p4: ExtDynamic<ImVec2>, uv1: ExtDynamic<ImVec2>, uv2: ExtDynamic<ImVec2>, uv3: ExtDynamic<ImVec2>, uv4: ExtDynamic<ImVec2>, col: ImU32 ) {}
	static function drawlist_add_image_rounded( drawlist: ImDrawListPtr, userTextureId: ImTextureID, pMin: ExtDynamic<ImVec2>, pMax: ExtDynamic<ImVec2>, uvMin: ExtDynamic<ImVec2>, uvMax: ExtDynamic<ImVec2>, col: ImU32, rounding: Single, roundingCorners: ImDrawFlags ) {}
}


@:hlNative("hlimgui")
abstract ImFont(ImFontPtr) from ImFontPtr to ImFontPtr
{
	// For backwards compatibility
	var ptr(get, never): ImFontPtr;
	inline function get_ptr() return this;

	public function new(ptr: ImFontPtr) { this = ptr; }
}

@:hlNative("hlimgui")
abstract ImStateStorage(ImStateStoragePtr) from ImStateStoragePtr to ImStateStoragePtr
{
	public inline function new(ptr: ImStateStoragePtr) { this = ptr; }

	static function state_storage_get_int(storage: ImStateStoragePtr, id: ImGuiID, default_val: Int): Int { return 0; }
	static function state_storage_set_int(storage: ImStateStoragePtr, id: ImGuiID, val: Int): Void {}
	static function state_storage_get_bool(storage: ImStateStoragePtr, id: ImGuiID, default_val: Bool): Bool { return false; }
	static function state_storage_set_bool(storage: ImStateStoragePtr, id: ImGuiID, val: Bool): Void {}
	static function state_storage_get_float(storage: ImStateStoragePtr, id: ImGuiID, default_val: Single): Single { return 0; }
	static function state_storage_set_float(storage: ImStateStoragePtr, id: ImGuiID, val: Single): Void {}

	public inline function setInt(id: ImGuiID, val: Int):Void state_storage_set_int(this, id, val);
	public inline function getInt(id: ImGuiID, default_val: Int = 0):Int return state_storage_get_int(this, id, default_val);
	public inline function setBool(id: ImGuiID, val: Bool):Void state_storage_set_bool(this, id, val);
	public inline function getBool(id: ImGuiID, default_val: Bool = false):Bool return state_storage_get_bool(this, id, default_val);
	public inline function setFloat(id: ImGuiID, val: Single):Void state_storage_set_float(this, id, val);
	public inline function getFloat(id: ImGuiID, default_val: Single = 0.0):Single return state_storage_get_float(this, id, default_val);
}

@:hlNative("hlimgui")
abstract ImDragDropPayload(ImDragDropPayloadPtr) from ImDragDropPayloadPtr to ImDragDropPayloadPtr {

	public inline function new(ptr: ImDragDropPayloadPtr) { this = ptr; }

	public inline function clear() dndpayload_clear(this);
	public inline function isDataType(type: String) return dndpayload_is_data_type(this, type);
	public var isPreview(get, never): Bool;
	public var isDelivery(get, never): Bool;

	public var asBinary(get, never):hl.Bytes;
	public var asString(get, never):String;
	public var asInt(get, never):Int;
	public var asFloat(get, never): Float;
	public var asBool(get, never): Bool;
	/**
		@param clear If true, the stored object will be removed from gc root and could be GC collected at any time if no other references to it remained on Haxe side.
		Subsequent asObject calls would return null as well.
	**/
	public inline function asObject<T>(clear: Bool = false):T return dndpayload_get_object(this, clear);

	inline function get_isPreview() return dndpayload_is_preview(this);
	inline function get_isDelivery() return dndpayload_is_delivery(this);
	inline function get_asBinary() return dndpayload_get_binary(this);
	inline function get_asString() return @:privateAccess String.fromUTF8(asBinary);
	inline function get_asInt() return asBinary.getI32(0);
	inline function get_asFloat() return asBinary.getF64(0);
	inline function get_asBool() return asBinary[0] != 0;

	static function dndpayload_clear(payload: ImDragDropPayloadPtr) {};
	static function dndpayload_is_data_type(payload: ImDragDropPayloadPtr, type: String): Bool {return false;};
	static function dndpayload_is_preview(payload: ImDragDropPayloadPtr): Bool {return false;};
	static function dndpayload_is_delivery(payload: ImDragDropPayloadPtr): Bool {return false;};

	static function dndpayload_get_binary(payload: ImDragDropPayloadPtr): hl.Bytes {return null;}
	static function dndpayload_get_object(payload: ImDragDropPayloadPtr, clear: Bool): Dynamic {return null;}
}


@:hlNative("hlimgui")
class ImGui
{
	public static inline var FLT_MAX = 3.402823466e+38;

	// Context
	public static function createContext() : ImContextPtr {return null;}
	public static function destroyContext(ctx : ImContextPtr = null) {}
	public static function getCurrentContext() : ImContextPtr {return null;}
	public static function setCurrentContext(ctx : ImContextPtr) {}

	// Main
	// TODO: GetIO()
	public static function getStyle() : ImGuiStyle {return null;}
	public static function setStyle(style : ImGuiStyle) {}
	public static function newFrame() {}
	public static function endFrame() {}
	public static function render() {}

	// Demo, Debug, Information
	public static function showDemoWindow(open : hl.Ref<Bool> = null) {}
	public static function showMetricsWindow(open : hl.Ref<Bool> = null) {}
	public static function showStackToolWindow(open : hl.Ref<Bool> = null) {}
	public static function showAboutWindow(open : hl.Ref<Bool> = null) {}
	public static function showStyleEditor(style : ImGuiStyle = null) {}
	public static function showStyleSelector(label : String) : Bool {return false;}
	public static function showFontSelector(label : String) {}
	public static function showUserGuide() {}
	static function get_version() : hl.Bytes {return null;}
	public static inline function getVersion() : String {
		return @:privateAccess String.fromUTF8(get_version());
	}

	// Styles
	public static function styleColorsDark(style : ImGuiStyle = null) {}
	public static function styleColorsClassic(style : ImGuiStyle = null) {}
	public static function styleColorsLight(style : ImGuiStyle = null) {}

	// Windows
	public static function begin(name : String, open : hl.Ref<Bool> = null, flags : ImGuiWindowFlags = 0) : Bool {return false;}
	public static function end() {}

	// Child Windows
	public static function beginChild(str_id : String, size : ExtDynamic<ImVec2> = null, border : Bool = false, flags : ImGuiWindowFlags = 0) : Bool {return false;}
	public static function beginChild2(id : Int, size : ExtDynamic<ImVec2> = null, border : Bool = false, flags : ImGuiWindowFlags = 0) : Bool {return false;}
	public static function endChild() {}

	// Windows Utilities
	public static function isWindowAppearing() : Bool {return false;}
	public static function isWindowCollapsed() : Bool {return false;}
	public static function isWindowFocused(flags : ImGuiFocusedFlags = 0) {return false;}
	public static function isWindowHovered(flags : ImGuiFocusedFlags = 0) {return false;}
	public static function getWindowDrawList() : ImDrawList {return null;}
	public static function getWindowDpiScale(): Single { return 0; }
	public static function getWindowPos() : ExtDynamic<ImVec2> {return null;}
	public static function getWindowSize() : ExtDynamic<ImVec2> {return null;}
	public static function getWindowWidth() : Single {return 0;}
	public static function getWindowHeight(): Single {return 0;}

	// Window manipulation
	public static function setNextWindowPos(pos : ExtDynamic<ImVec2>, cond : ImGuiCond = 0, pivot : ExtDynamic<ImVec2> = null) {}
	public static function setNextWindowSize(size: ExtDynamic<ImVec2>, cond : ImGuiCond = 0) {}
	public static function setNextWindowSizeConstraints(size_min : ExtDynamic<ImVec2>, size_max : ExtDynamic<ImVec2>) {}
	public static function setNextWindowContentSize(size : ExtDynamic<ImVec2>) {}
	public static function setNextWindowCollapsed(collapsed : Bool, cond : ImGuiCond = 0) {}
	public static function setNextWindowFocus() {}
	public static function setNextWindowBgAlpha(alpha : Single) {}
	public static function setWindowPos(pos : ExtDynamic<ImVec2>, cond : ImGuiCond = 0) {}
	public static function setWindowSize(size : ExtDynamic<ImVec2>, cond : ImGuiCond = 0) {}
	public static function setWindowCollapsed(collapsed : Bool, cond : ImGuiCond = 0) {}
	public static function setWindowFocus() {}
	public static function setWindowFontScale(scale : Single) {}
	public static function setWindowPos2(name : String, pos : ExtDynamic<ImVec2>, cond : ImGuiCond = 0) {}
	public static function setWindowSize2(name : String, size : ExtDynamic<ImVec2>, cond : ImGuiCond = 0) {}
	public static function setWindowCollapsed2(name : String, collapsed : Bool, cond : ImGuiCond = 0) {}
	public static function setWindowFocus2(name : String) {}

	// Content region
	public static function getContentRegionMax() : ExtDynamic<ImVec2> {return null;}
	public static function getContentRegionAvail() : ExtDynamic<ImVec2> {return null;}
	public static function getWindowContentRegionMin() : ExtDynamic<ImVec2> {return null;}
	public static function getWindowContentRegionMax() : ExtDynamic<ImVec2> {return null;}
	@:deprecated // Obsoleted in latest imgui
	public static function getWindowContentRegionWidth() : Single {return 0;}

	// Windows Scrolling
	public static function getScrollX() : Single {return 0;}
	public static function getScrollY() : Single {return 0;}
	public static function setScrollX(scroll_x : Single) {}
	public static function setScrollY(scroll_y : Single) {}
	public static function getScrollMaxX() : Single {return 0;}
	public static function getScrollMaxY() : Single {return 0;}
	public static function setScrollHereX(center_x_ratio : Single = 0.5) {}
	public static function setScrollHereY(center_y_ratio : Single = 0.5) {}
	public static function setScrollFromPosX(local_x : Single, center_x_ratio : Single = 0.5) {}
	public static function setScrollFromPosY(local_y : Single, center_y_ratio : Single = 0.5) {}

	// Parameters stacks (shared)
	public static function pushFont( font: ImFont ) {}
	public static function popFont() {}
	public static function pushStyleColor(idx : ImGuiCol, col : ImU32) {}
	public static function pushStyleColor2(idx : ImGuiCol, col : ExtDynamic<ImVec4>) {}
	public static function popStyleColor(count : Int = 1) {}
	public static function pushStyleVar(idx : ImGuiStyleVar, val : Single) {}
	public static function pushStyleVar2(idx : ImGuiStyleVar, val : ExtDynamic<ImVec2>) {}
	public static function popStyleVar(count : Int = 1) {}
	public static function pushAllowKeyboardFocus(allow_keyboard_focus : Bool) {}
	public static function popAllowKeyboardFocus() {}
	public static function pushButtonRepeat(repeat : Bool) {}
	public static function popButtonRepeat() {}

	// Parameters stacks (current window)
	public static function pushItemWidth(item_width : Single) {}
	public static function popItemWidth() {}
	public static function setNextItemWidth(item_width : Single) {}
	public static function calcItemWidth() : Single {return 0;}
	public static function pushTextWrapPos(wrap_local_pos_x : Single = 0.0) {}
	public static function popTextWrapPos() {}

	// Style read access
	public static function getFont(): ImFont {return null;}
	public static function getFontSize() : Single {return 0;}
	public static function getFontTexUvWhitePixel() : ExtDynamic<ImVec2> {return null;}
	public static function getColorU32(idx : ImGuiCol, alpha_mul : Single = 1.0) : ImU32 {return 0;}
	public static function getColorU322(col : ExtDynamic<ImVec4>) : ImU32 {return 0;}
	public static function getColorU323(col : ImU32) : ImU32 {return 0;}
	public static function getStyleColorVec4(idx : ImGuiCol) : ExtDynamic<ImVec4> {return null;}

	// Cursor / Layout
	public static function separator() {}
	public static function sameLine(offset_from_start_x : Single = 0.0, spacing : Single = -1.0) {}
	public static function newLine() {}
	public static function spacing() {}
	public static function dummy(size : ExtDynamic<ImVec2>) {}
	public static function indent(indent_w : Single = 0.0) {}
	public static function unindent(indent_w : Single = 0.0) {}
	public static function beginGroup() {}
	public static function endGroup() {}
	public static function getCursorPos() : ExtDynamic<ImVec2> {return null;}
	public static function getCursorPosX() : Single {return 0;}
	public static function getCursorPosY() : Single {return 0;}
	public static function setCursorPos(local_pos : ExtDynamic<ImVec2>) {}
	public static function setCursorPosX(local_x : Single) {}
	public static function setCursorPosY(local_y : Single) {}
	public static function getCursorStartPos() : ExtDynamic<ImVec2> {return null;}
	public static function getCursorScreenPos() : ExtDynamic<ImVec2> {return null;}
	public static function setCursorScreenPos(pos : ExtDynamic<ImVec2>) {}
	public static function alignTextToFramePadding() {}
	public static function getTextLineHeight() : Single {return 0;}
	public static function getTextLineHeightWithSpacing() : Single {return 0;}
	public static function getFrameHeight() : Single {return 0;}
	public static function getFrameHeightWithSpacing() : Single {return 0;}

	// ID stack/scopes
	public static function pushID(str_id : String) {}
	@:native("push_id_sub") public static function pushIDSub(str_id : String, begin : Int, end : Int) {}
	@:native("push_id_int") public static function pushIDInt(int_id : Int) {}
	@:native("push_id_ptr") public static function pushIDPtr(obj: Any) {}
	public static function popID() {}
	public static function getID(str_id : String) : Int {return 0;}
	@:native("get_id_sub") public static function getIDSub(str_id : String, begin: Int, end: Int) : Int {return 0;}
	@:native("get_id_ptr") public static function getIDPtr(obj: Any) : Int {return 0;}

	@:deprecated("use getIDSub") public static function getID2(str_id : String, begin: Int, end: Int) : Int {return getIDSub(str_id, begin, end);}
	@:deprecated("use pushIDSub") public static inline function pushID2(str_id : String, begin : Int, end : Int) { pushIDSub(str_id, begin, end); }
	@:deprecated("use pushIDInt") public static inline function pushID3(int_id : Int) { pushIDInt(int_id); }

	// Widgets: Text
	// TODO: TextUnformatted(text: String, ?start: Int, ?end: Int)
	// TODO: Allow format arguments to be passed
	public static function text(text : String) {}
	public static function textColored(col : ExtDynamic<ImVec4>, fmt : String) {}
	public static function textDisabled(text : String) {}
	public static function textWrapped(text : String) {}
	public static function labelText(label : String, text : String) {}
	public static function bulletText(text : String) {}

	// Widgets: Main
	public static function button(name : String, ?size : ExtDynamic<ImVec2>) : Bool {return false;}
	public static function smallButton(label : String) : Bool {return false;}
	public static function invisibleButton(str_id : String, ?size : ExtDynamic<ImVec2>) : Bool {return false;}
	public static function arrowButton(str_id : String, dir : ImGuiDir) : Bool {return false;}
	public static function image(user_texture_id : ImTextureID, size : ExtDynamic<ImVec2>, uv0 : ExtDynamic<ImVec2> = null, uv1 : ExtDynamic<ImVec2> = null, tint_col : ExtDynamic<ImVec4> = null, border_col : ExtDynamic<ImVec4> = null) {}
	public static function imageButton(user_texture_id : ImTextureID, size : ExtDynamic<ImVec2>, uv0 : ExtDynamic<ImVec2> = null,  uv1 : ExtDynamic<ImVec2> = null, frame_padding : Int = -1, bg_col : ExtDynamic<ImVec4> = null, tint_col : ExtDynamic<ImVec4> = null) : Bool {return false;}
	#if heaps
	public static inline function imageTile( tile: h2d.Tile, ?size: ImVec2, ?tint_col: ImVec4, ?border_col: ImVec4) @:privateAccess {
		image(tile.getTexture(), size == null ? ImTypeCache.imVec2[0].set(tile.width, tile.height) : size, ImTypeCache.imVec2[1].set(tile.u, tile.v), ImTypeCache.imVec2[2].set(tile.u2, tile.v2), tint_col, border_col);
	}

	public static inline function imageTileButton( tile: h2d.Tile, ?size: ImVec2, frame_padding: Int = -1, ?bg_col: ImVec4, ?tint_col: ImVec4): Bool @:privateAccess {
		return imageButton(tile.getTexture(), size == null ? ImTypeCache.imVec2[0].set(tile.width, tile.height) : size, ImTypeCache.imVec2[1].set(tile.u, tile.v), ImTypeCache.imVec2[2].set(tile.u2, tile.v2), frame_padding, bg_col, tint_col);
	}
	#end
	public static function checkbox(label : String, v : hl.Ref<Bool>) : Bool {return false;}
	public static function checkboxFlags(label : String, flags : hl.Ref<Int>, flags_value : Int) : Bool {return false;}
	public static function radioButton(label : String, active : Bool) : Bool {return false;}
	public static function radioButton2(label : String, v : hl.Ref<Int>, v_button : Int) : Bool {return false;}
	public static function progressBar(fraction : Single, size_arg : ExtDynamic<ImVec2> = null, overlay : String = null) {}
	public static function bullet() {}

	// Widgets: Combo Box
	public static function beginCombo(label : String, preview_value : String, flags : ImGuiComboFlags = 0) : Bool {return false;}
	public static function endCombo() {}
	public static function combo(label : String, current_item : hl.Ref<Int>, items : hl.NativeArray<String>, popup_max_height_in_items : Int = -1) : Bool {return false;}
	public static function combo2(label : String, current_item : hl.Ref<Int>, items_separated_by_zeros : String, popup_max_height_in_items : Int = -1) : Bool {return false;}
	// TODO: comboCallback variant

	// Widgets: Drag Sliders
	public static function dragFloat(label : String, v : hl.Ref<Single>, v_speed : Single = 1.0, v_min : Single = 0.0, v_max : Single = 0.0, format : String = "%.3f", flags : ImGuiSliderFlags = 0) : Bool {return false;}
	public static function dragInt(label : String, v : hl.Ref<Int>, v_speed : Single = 1.0, v_min : Int = 0, v_max : Int = 0, format : String = "%d", flags : ImGuiSliderFlags = 0) : Bool {return false;}
	public static function dragDouble(label : String, v : hl.Ref<Float>, v_speed : Single = 1.0, v_min : Float = 0.0, v_max : Float = 0.0, format : String = "%.3lf", flags : ImGuiSliderFlags = 0) : Bool {return false;}

	public static function dragFloatRange2(label : String, v_current_min : hl.Ref<Single>, v_current_max : hl.Ref<Single>, v_speed : Single = 1.0, v_min : Single = 0.0, v_max : Single = 0.0, format : String = "%.3f", format_max : String = null, flags : ImGuiSliderFlags = 0) : Bool {return false;}
	public static function dragIntRange2(label : String, v_current_min : hl.Ref<Int>, v_current_max : hl.Ref<Int>, v_speed : Single = 1.0, v_min : Int = 0, v_max : Int = 0, format : String = "%.d", format_max : String = null, flags : ImGuiSliderFlags = 0) : Bool {return false;}

	public static inline function dragFloatN(label : String, v : hl.NativeArray<Single>, v_speed : Single = 1.0, v_min : Single = 0.0, v_max : Single = 0.0, format : String = "%.3f", flags : ImGuiSliderFlags = 0) : Bool {
		return drag_scalar_n(label, ImGuiDataType.Float, v, v_speed, v_min, v_max, format, flags);
	}
	public static inline function dragIntN(label : String, v : hl.NativeArray<Int>, v_speed : Single = 1.0, v_min : Int = 0, v_max : Int = 0, format : String = "%d", flags : ImGuiSliderFlags = 0) : Bool {
		return drag_scalar_n(label, ImGuiDataType.S32, v, v_speed, v_min, v_max, format, flags);
	}
	public static inline function dragDoubleN(label : String, v : hl.NativeArray<Float>, v_speed : Single = 1.0, v_min : Float = 0.0, v_max : Float = 0.0, format : String = "%.3lf", flags : ImGuiSliderFlags = 0) : Bool {
		return drag_scalar_n(label, ImGuiDataType.Double, v, v_speed, v_min, v_max, format, flags);
	}
	static function drag_scalar_n(label : String, type : Int, v : hl.NativeArray<Dynamic>, v_speed : Single, v_min : Dynamic, v_max : Dynamic, format : String, flags : Int) : Bool {return false;}

	// Widgets: Regular Sliders
	public static function sliderFloat(label : String, v : hl.Ref<Single>, v_min : Single, v_max : Single, format : String = "%.3f", flags : ImGuiSliderFlags = 0) : Bool {return false;}
	public static function sliderInt(label : String, v : hl.Ref<Int>, v_min : Int, v_max : Int, format : String = "%d", flags : ImGuiSliderFlags = 0) : Bool {return false;}
	public static function sliderDouble(label : String, v : hl.Ref<Float>, v_min : Float, v_max : Float, format : String = "%.3lf", flags : ImGuiSliderFlags = 0) : Bool {return false;}

	public static function vSliderFloat(label : String, size : ExtDynamic<ImVec2>, v : hl.Ref<Single>, v_min : Single, v_max : Single, format : String = "%.3f", flags : ImGuiSliderFlags = 0) : Bool {return false;}
	public static function vSliderInt(label : String, size : ExtDynamic<ImVec2>, v : hl.Ref<Int>, v_min : Int, v_max : Int, format : String = "%d", flags : ImGuiSliderFlags = 0) : Bool {return false;}
	public static function sliderAngle(label : String, v_rad : hl.Ref<Single>, v_degrees_min : Single = -360.0, v_degrees_max : Single = 360.0, format : String = "%.0f deg", flags : ImGuiSliderFlags = 0) : Bool {return false;}

	public static inline function sliderFloatN(label : String, v : hl.NativeArray<Single>, v_min : Single, v_max : Single, format : String = "%.3f", flags : ImGuiSliderFlags = 0) : Bool {
		return slider_scalar_n(label, ImGuiDataType.Float, v, v_min, v_max, format, flags);
	}
	public static inline function sliderIntN(label : String, v : hl.NativeArray<Int>, v_min : Int, v_max : Int, format : String = "%d", flags : ImGuiSliderFlags = 0) : Bool {
		return slider_scalar_n(label, ImGuiDataType.S32, v, v_min, v_max, format, flags);
	}
	public static inline function sliderDoubleN(label : String, v : hl.NativeArray<Float>, v_min : Float, v_max : Float, format : String = "%.3lf", flags : ImGuiSliderFlags = 0) : Bool {
		return slider_scalar_n(label, ImGuiDataType.Double, v, v_min, v_max, format, flags);
	}
	static function slider_scalar_n(label : String, type: Int, v : hl.NativeArray<Dynamic>, v_min : Dynamic, v_max : Dynamic, format : String, flags : Int) : Bool {return false;}

	// Widgets: Input with Keyboard
	public static function inputText(label : String, value: String, flags : ImGuiInputTextFlags = 0, callback: ImGuiInputTextCallbackDataFunc = null) : Bool {return false;}
	public static function inputTextMultiline(label : String, value: String, size : ExtDynamic<ImVec2> = null, flags : ImGuiInputTextFlags = 0, callback: ImGuiInputTextCallbackDataFunc = null ) : Bool {return false;}
	public static function inputTextWithHint(label : String, hint : String, value: String, flags : ImGuiInputTextFlags = 0, callback: ImGuiInputTextCallbackDataFunc = null) : Bool {return false;}
	
	public static function inputTextBuf(label : String, buf : hl.Bytes, buf_size : Int, flags : ImGuiInputTextFlags = 0, callback: ImGuiInputTextCallbackDataFunc = null) : Bool {return false;}
	public static function inputTextMultilineBuf(label : String, buf : hl.Bytes, buf_size : Int, size : ExtDynamic<ImVec2> = null, flags : ImGuiInputTextFlags = 0, callback: ImGuiInputTextCallbackDataFunc = null ) : Bool {return false;}
	public static function inputTextWithHintBuf(label : String, hint : String, buf : hl.Bytes, buf_size : Int, flags : ImGuiInputTextFlags = 0, callback: ImGuiInputTextCallbackDataFunc = null) : Bool {return false;}
	
	public static function inputInt(label : String, v : hl.Ref<Int>, step : Int = 1, step_fast : Int = 100, flags : ImGuiInputTextFlags = 0) : Bool {return false;}
	public static function inputFloat(label : String, v : hl.Ref<Single>, step : Single = 0.0, step_fast : Single = 0.0, format : String = "%.3f", flags : ImGuiInputTextFlags = 0) : Bool {return false;}
	public static function inputDouble(label : String, v : hl.Ref<Float>, step : Float = 0.0, step_fast : Float = 0.0, format : String = "%.6f", flags : ImGuiInputTextFlags = 0) : Bool {return false;}

	public static inline function inputFloatN(label : String, v : hl.NativeArray<Single>, step : Single = 0.0, step_fast : Single = 0.0, format : String = "%.3f", flags : ImGuiInputTextFlags = 0) : Bool {
		return input_scalar_n(label, ImGuiDataType.Float, v, step, step_fast, format, flags);
	}
	public static inline function inputIntN(label : String, v : hl.NativeArray<Int>, step : Int = 0, step_fast : Int = 0, flags : ImGuiInputTextFlags = 0): Bool {
		return input_scalar_n(label, ImGuiDataType.S32, v, step, step_fast, "%d", flags);
	}
	public static inline function inputDoubleN(label : String, v : hl.NativeArray<Float>, step : Float = 0.0, step_fast : Float = 0.0, format : String = "%.6f", flags : ImGuiInputTextFlags = 0) : Bool {
		return input_scalar_n(label, ImGuiDataType.Double, v, step, step_fast, format, flags);
	}
	@:deprecated("Use inputFloatN")
	public static inline function inputFloat2(label : String, v : hl.NativeArray<Single>, format : String = "%.3f", flags : ImGuiInputTextFlags = 0) : Bool {
		return inputFloatN(label, v, format, flags);
	}
	@:deprecated("Use inputFloatN")
	public static function inputFloat3(label : String, v : hl.NativeArray<Single>, format : String = "%.3f", flags : ImGuiInputTextFlags = 0) : Bool {
		return inputFloatN(label, v, format, flags);
	}
	@:deprecated("Use inputFloatN")
	public static function inputFloat4(label : String, v : hl.NativeArray<Single>, format : String = "%.3f", flags : ImGuiInputTextFlags = 0) : Bool {
		return inputFloatN(label, v, format, flags);
	}
	@:deprecated("Use inputIntN")
	public static function inputInt2(label : String, v : hl.NativeArray<Int>, flags : ImGuiInputTextFlags = 0) : Bool {
		return inputIntN(label, v, flags);
	}
	@:deprecated("Use inputIntN")
	public static function inputInt3(label : String, v : hl.NativeArray<Int>, flags : ImGuiInputTextFlags = 0) : Bool {
		return inputIntN(label, v, flags);
	}
	@:deprecated("Use inputIntN")
	public static function inputInt4(label : String, v : hl.NativeArray<Int>, flags : ImGuiInputTextFlags = 0) : Bool {
		return inputIntN(label, v, flags);
	}

	static function input_scalar_n(label : String, type : Int, v : hl.NativeArray<Dynamic>, step : Dynamic, step_fast : Dynamic, format : String, flags : Int) : Bool {return false;}

	// Widgets: Color Editor/Picker
    public static function colorEdit3(label : String, col : hl.NativeArray<Single>, flags : ImGuiColorEditFlags = 0) : Bool {return false;}
    public static function colorEdit4(label : String, col : hl.NativeArray<Single>,  flags : ImGuiColorEditFlags = 0) : Bool {return false;}
    public static function colorPicker3(label : String, col : hl.NativeArray<Single>, flags : ImGuiColorEditFlags = 0) : Bool {return false;}
    public static function colorPicker4(label : String, col : hl.NativeArray<Single>, flags : ImGuiColorEditFlags = 0, ref_col : hl.Ref<Single> = null) : Bool {return false;}
    public static function colorButton(desc_id : String, col : ExtDynamic<ImVec4> = null, flags : ImGuiColorEditFlags = 0, size : ExtDynamic<ImVec2> = null) : Bool {return false;}
	public static function setColorEditOptions(flags : ImGuiColorEditFlags) {}

	// Widgets: Trees
	public static function treeNode(label : String) : Bool {return false;}
    public static function treeNode2(str_id : String, label : String) : Bool {return false;}
    public static function treeNodeEx(label : String, flags : ImGuiTreeNodeFlags = 0) : Bool {return false;}
    public static function treeNodeEx2(str_id : String, flags : ImGuiTreeNodeFlags, label : String) : Bool {return false;}
    public static function treePush(str_id : String) {}
    public static function treePop() {}
    public static function getTreeNodeToLabelSpacing() : Single {return 0;}
    public static function collapsingHeader(label : String, flags : ImGuiTreeNodeFlags = 0) : Bool {return false;}
    public static function collapsingHeader2(label : String, p_open : hl.Ref<Bool>, flags : ImGuiTreeNodeFlags = 0) : Bool {return false;}
	public static function setNextItemOpen(is_open : Bool, cond : ImGuiCond = 0) {}

	// Widgets: Selectables
    public static function selectable(label : String, selected : Bool = false, flags : ImGuiSelectableFlags = 0, size : ExtDynamic<ImVec2> = null) : Bool {return false;}
	public static function selectable2(label : String, p_selected : hl.Ref<Bool>, flags : ImGuiSelectableFlags = 0, size : ExtDynamic<ImVec2> = null) : Bool {return false;}

	// Widgets: List Boxes
	/**
		- Choose frame width:   size.x > 0.0f: custom  /  size.x < 0.0f or -FLT_MIN: right-align   /  size.x = 0.0f (default): use current ItemWidth
		- Choose frame height:  size.y > 0.0f: custom  /  size.y < 0.0f or -FLT_MIN: bottom-align  /  size.y = 0.0f (default): arbitrary default height which can fit ~7 items
	**/
	public static function beginListBox(label: String, size: ExtDynamic<ImVec2> = null): Bool { return false; }
	/** Only call if beginListBox returns true! **/
	public static function endListBox() {}

	public static function listBox(label : String, current_item : hl.Ref<Int>, items : hl.NativeArray<String>, height_in_items : Int = -1) : Bool {return false;}
	// TODO: Callback variant
	@:deprecated("Use beginListBox")
	public static inline function listBoxHeader(label : String, size : ExtDynamic<ImVec2> = null) : Bool {return beginListBox(label, size);}
	@:deprecated("Obsolete")
	public static function listBoxHeader2(label : String, items_count : Int, height_in_items : Int = -1) : Bool {return false;}
	@:deprecated("Use endListBox")
	public static inline function listBoxFooter() { endListBox(); }

	// Widgets: Data Plotting
    public static function plotLines(label : String, values : hl.NativeArray<Single>, values_offset : Int = 0, overlay_text : String = null, scale_min : Single = FLT_MAX, scale_max : Single = FLT_MAX, graph_size : ExtDynamic<ImVec2>) {}
	public static function plotHistogram(label : String, values : hl.NativeArray<Single>, values_offset : Int = 0, overlay_text : String = null, scale_min : Single = FLT_MAX, scale_max : Single = FLT_MAX, graph_size : ExtDynamic<ImVec2>) {}

	// Widgets: Value() Helpers.
	public static function valueBool(prefix : String, b : Bool) {}
	public static function valueInt(prefix : String, v : Int) {}
	public static function valueSingle(prefix : String, v : Single, float_format : String = null) {}
	public static function valueDouble(prefix: String, v: Float, double_format: String = null) {}

	// Widgets: Menus
	public static function beginMenuBar() : Bool {return false;}
	/** Only call EndMenuBar() if BeginMenuBar() returns true! **/
	public static function endMenuBar() {}
	public static function beginMainMenuBar() : Bool {return false;}
	/** Only call EndMainMenuBar() if BeginMainMenuBar() returns true! **/
	public static function endMainMenuBar() {}
	public static function beginMenu(label : String, enabled : Bool = true) : Bool {return false;}
	/** Only call EndMenu() if BeginMenu() returns true! **/
	public static function endMenu() {}
	public static function menuItem(label : String, shortcut : String = null, selected : Bool = false, enabled : Bool = true) : Bool {return false;}
	public static function menuItem2(label : String, shortcut : String, p_selected : hl.Ref<Bool>, enabled : Bool = true) : Bool {return false;}

	// ToolTips
	public static function beginTooltip() {}
	public static function endTooltip() {}
	public static function setTooltip(fmt : String) {} // TODO: Allow format args

	// Popups, Modals

	// Popups: begin/end function
	public static function beginPopup(str_id : String, flags : ImGuiWindowFlags = 0) : Bool {return false;}
	public static function beginPopupModal(name : String, p_open : hl.Ref<Bool> = null, flags : ImGuiWindowFlags = 0) : Bool {return false;}
	public static function endPopup() {}

	// Popups: open/close functions
	public static function openPopup(str_id : String) {}
	// TODO: openPopup with id: ImGuiID
	public static function openPopupOnItemClick(str_id : String = null, mouse_button : ImGuiMouseButton = 1) : Void {}
	public static function closeCurrentPopup() {}

	// Popups: open+begin combined function helpers
	public static function beginPopupContextItem(str_id : String = null, mouse_button : ImGuiMouseButton = 1) : Bool {return false;}
	public static function beginPopupContextWindow(str_id : String = null, mouse_button : ImGuiMouseButton = 1, also_over_items : Bool = true) : Bool {return false;}
	public static function beginPopupContextVoid(str_id : String = null, mouse_button : ImGuiMouseButton= 1) : Bool {return false;}

	// Popups: query functions
	public static function isPopupOpen(str_id : String) : Bool {return false;}

	// Tables
	public static function beginTable( id: String, column: Int, flags: ImGuiTableFlags = ImGuiTableFlags.None, outer_size: ExtDynamic<ImVec2> = null, inner_width = 0 ): Bool { return false; }
	public static function endTable() {}
	public static function tableNextRow( rowFlags: ImGuiTableRowFlags = ImGuiTableRowFlags.None, minRowHeight: Single = 0 ) {}
	public static function tableNextColumn() {}
	public static function tableSetColumnIndex( columnIndex: Int ) {}

	// Tables: Headers & Columns declaration
	public static function tableSetupColumn( id: String, flags: ImGuiTableColumnFlags = ImGuiTableColumnFlags.None, initWidthOrHeight: Single = 0, userId: ImGuiID = 0) {}
	public static function tableSetupScrollFreeze( cols: Int, rows: Int ) {}
	public static function tableHeadersRow() {}
	public static function tableHeader( id: String ) {}

	// Tables: Sorting
	//public static function tableGetSortSpecs( id: String ): ImGUiTableSortSpecs { return null } // @todo

	// Tables: Miscellaneous functions
	public static function tableGetColumnCount(): Int { return 0; }
	public static function tableGetColumnIndex(): Int { return 0; }
	public static function tableGetRowIndex(): Int { return 0; }
	public static function tableGetColumnName(): String { return null; }
	public static function tableGetColumnFlags(): ImGuiTableColumnFlags { return 0; }
	public static function tableSetColumnEnabled( column_n: Int, enabled: Bool ): Void {}
	public static function tableSetBGColor( target: ImGuiTableBgTarget, color: Int, column_n: Int = -1 ): Void { }

	// Legacy Columns API (prefer using Tables!)
	public static function columns(count : Int = 1, id : String = null, border : Bool = true) {}
	public static function nextColumn() {}
	public static function getColumnIndex() : Int {return 0;}
	public static function getColumnWidth(column_index : Int = -1) : Single {return 0;}
	public static function setColumnWidth(column_index : Int, width : Single) {}
	public static function getColumnOffset(column_index : Int = -1) : Single {return 0;}
	public static function setColumnOffset(column_index : Int, offset_x : Single) {}
	public static function getColumnsCount() : Int {return 0;}

	// Tab Bars, Tabs
	public static function beginTabBar(str_id : String, flags : ImGuiTabBarFlags = 0) : Bool {return false;}
	public static function endTabBar() {}
	public static function beginTabItem(label : String, p_open : hl.Ref<Bool> = null, flags : ImGuiTabItemFlags = 0) : Bool {return false;}
	public static function endTabItem() {}
	public static function tabItemButton(label : String, flags : ImGuiTabItemFlags = 0) : Bool {return false;}
	public static function setTabItemClosed(tab_or_docked_window_label : String) {}

	// Docking
	public static function dockSpace(id : ImGuiID, size : ExtDynamic<ImVec2> = null, flags : ImGuiDockNodeFlags = 0) {}
	// dockSpaceOverViewport // Viewport API
	public static function setNextWindowDockId(id : ImGuiID, cond : ImGuiCond = 0) {}
	// setNextWindowClass // Viewport API
	public static function getWindowDockId() : ImGuiID { return 0; }
	public static function isWindowDocked() : Bool { return false; }

	// [imgui_internal] Dock Builder
	public static function dockBuilderDockWindow(window_name: String, node_id : ImGuiID) {}
	public static function dockBuilderGetNode(node_id : ImGuiID) : ImGuiDockNode { return null; }
	public static function dockBuilderGetCentralNode(node_id : ImGuiID) : ImGuiDockNode { return null; }
	public static function dockBuilderAddNode(node_id : ImGuiID, flags: ImGuiDockNodeFlags) : ImGuiID { return 0; }
	public static function dockBuilderRemoveNode(node_id : ImGuiID) {}
	public static function dockBuilderRemoveNodeDockedWindows(node_id : ImGuiID, clear_settings_refs: Bool) {}
	public static function dockBuilderRemoveNodeChildNodes(node_id : ImGuiID) {}
	public static function dockBuilderSetNodePos(node_id : ImGuiID, pos: ExtDynamic<ImVec2> ) {}
	public static function dockBuilderSetNodeSize(node_id : ImGuiID, size: ExtDynamic<ImVec2> ) {}
	public static function dockBuilderSplitNode(node_id : ImGuiID, split_dir: ImGuiDir, size_ratio_for_node_at_dir: Single, out_id_at_dir: hl.Ref<ImGuiID>, out_id_at_opposite_dir: hl.Ref<ImGuiID> ) { return 0; }
	// DockBuilderCopyDockSpace
	// DockBuilderCopyNode
	public static function dockBuilderCopyWindowSettings(src_name: String, dst_name: String) {}
	public static function dockBuilderFinish(node_id : ImGuiID) {}

	// Logging/Capture
	public static function logToTTY(auto_open_depth : Int = -1) {}
	public static function logToFile(auto_open_depth : Int = -1, filename : String = null) {}
	public static function logToClipboard(auto_open_depth : Int = -1) {}
	public static function logFinish() {}
	public static function logButtons() {}
	public static function logText(text : String) {} // TODO: Allow format args

	// Drag and drop
	public static function beginDragDropTarget(): Bool { return false; }
	public static function endDragDropTarget() {}
	public static function beginDragDropSource( flags: ImGuiDragDropFlags = 0 ): Bool { return false; }
	public static function endDragDropSource() {}
	public static function setDragDropPayload(type: String, payload: hl.Bytes, length: Int, cond: ImGuiCond = 0 ) : Bool { return false; }
	public static function acceptDragDropPayload(type: String, cond: ImGuiCond = 0 ) : ImDragDropPayload { return null; }
	public static function getDragDropPayload() : ImDragDropPayload { return null; }
	/**
		Due to Haxe being a GC language, payload will be added as gc root until new payload is set or `clearDragDropPayloadObject()` is called.
		Alternatively, when accepting payload, call `payload.asObject(true)` to clear the stored object, however subsequent `asObject` calls will yield `null`.
	**/
	public static function setDragDropPayloadObject(type: String, payload: Dynamic, cond: ImGuiCond = 0): Bool { return false; }
	public static function clearDragDropPayloadObject() {}
	/**
		Returns currently stored payload object.
	**/
	public static function getDragDropPayloadObject<T>(): T { return null; }

	// Payload helpers
	/** Shortcut to set a String payload **/
	public static inline function setDragDropPayloadString(type: String, payload: String, cond: ImGuiCond = 0 ): Bool
	{
		var b = Bytes.ofString( payload + '\x00' );
		return setDragDropPayload(type, b, b.length, cond);
	}
	/**
		Accept a drag&drop payload with specified type and return it as String or null if no payload present.
	**/
	public static inline function acceptDragDropPayloadString(type: String, cond: ImGuiCond = 0 ): String
	{
		var payload = acceptDragDropPayload(type, cond);
		return payload != null ? payload.asString : null;
	}
	/** Shortcut to set an Int payload **/
	public static inline function setDragDropPayloadInt(type: String, payload: Int, cond: ImGuiCond = 0 ): Bool
	{
		var b = new hl.Bytes(4);
		b.setI32(0, payload);
		return setDragDropPayload(type, b, 4, cond);
	}
	/**
		Accept a drag&drop payload with specified type and return it as an Int or 0 if no payload present.
	**/
	public static inline function acceptDragDropPayloadInt(type: String, cond: ImGuiCond = 0 ): Int
	{
		var payload = ImGui.acceptDragDropPayload(type);
		return payload != null ? payload.asInt : 0;
	}
	/**
		Accept a drag&drop payload with specified type and return it as `T` or null if no payload present.
	**/
	public static inline function acceptDragDropPayloadObject<T>(type: String, cond: ImGuiCond = 0, clear: Bool = false): T
	{
		var payload = ImGui.acceptDragDropPayload(type);
		return payload != null ? payload.asObject(clear) : null;
	}

	// Disabling [BETA API]
	// public static function beginDisabled(disabled: Bool = true) {}
	// public static function endDisabled() {}

	// Clipping
	public static function pushClipRect(clip_rect_min : ExtDynamic<ImVec2>, clip_rect_max : ExtDynamic<ImVec2>, intersect_with_current_clip_rect : Bool) {}
	public static function popClipRect() {}

	// Focus, Activation
	public static function setItemDefaultFocus() {}
	public static function setKeyboardFocusHere(offset : Int = 0) {}

	// Item/Widgets Utilities
	public static function isItemHovered(flags : ImGuiHoveredFlags = 0) : Bool {return false;}
	public static function isItemActive() : Bool {return false;}
	public static function isItemFocused() : Bool {return false;}
	public static function isItemClicked(mouse_button : ImGuiMouseButton = 0) : Bool {return false;}
	public static function isItemVisible() : Bool {return false;}
	public static function isItemEdited() : Bool {return false;}
	public static function isItemActivated() : Bool {return false;}
	public static function isItemDeactivated() : Bool {return false;}
	public static function isItemDeactivatedAfterEdit() : Bool {return false;}
	public static function isItemToggledOpen() : Bool {return false;}
	public static function isAnyItemHovered() : Bool {return false;}
	public static function isAnyItemActive() : Bool {return false;}
	public static function isAnyItemFocused() : Bool {return false;}
	public static function getItemRectMin() : ExtDynamic<ImVec2> {return null;}
	public static function getItemRectMax() : ExtDynamic<ImVec2> {return null;}
	public static function getItemRectSize() : ExtDynamic<ImVec2> {return null;}
	public static function setItemAllowOverlap() {}

	// Viewports
	// public static function getMainViewport(): IMViewport

	// Miscellaneous Utilities
	public static function isRectVisible(size : ExtDynamic<ImVec2>) : Bool {return false;}
	public static function isRectVisible2(rect_min : ExtDynamic<ImVec2>, rect_max : ExtDynamic<ImVec2>) : Bool {return false;}
	public static function getTime() : Float {return 0;}
	public static function getFrameCount() : Int {return 0;}
	public static function getForegroundDrawList() : ImDrawList {return null;}
	//getForegroundDrawList(viewport) // Viewport API
	public static function getBackgroundDrawList() : ImDrawList {return null;}
	//getBackgroundDrawList(viewport) // Viewport API
	//getDrawListSharedData()
	static function get_style_color_name(idx : ImGuiCol) : hl.Bytes {return null;}
	public static function getStyleColorName(idx : ImGuiCol) : String {
		return @:privateAccess String.fromUTF8(get_style_color_name(idx));
	}
	public static function getStateStorage() : ImStateStorage {return null;}
	//setStateStorage
	public static function beginChildFrame(id : ImGuiID, size : ExtDynamic<ImVec2>, flags : ImGuiWindowFlags = 0) : Bool {return false;}
	public static function endChildFrame() {}
	@:deprecated("Obsolete: Use ImGuiListClipper")
	public static function calcListClipping(items_count : Int, items_height : Single, out_items_display_start : hl.Ref<Int>, out_items_display_end : hl.Ref<Int>) {}

	// Text Utilities
	public static function calcTextSize(text : String, text_end : String = null, hide_text_after_double_hash : Bool = false, wrap_width : Single = -1.0) : ExtDynamic<ImVec2> {return null;}

	// Color Utilities
	public static function colorConvertU32ToFloat4(color : ImU32) : ExtDynamic<ImVec4> {return null;}
	public static function colorConvertFloat4ToU32(color : ExtDynamic<ImVec4>) : ImU32 {return 0;}
	public static function colorConvertRGBtoHSV(r : Single, g : Single, b : Single, out_h : hl.Ref<Single>, out_s : hl.Ref<Single>, out_v : hl.Ref<Single>) {}
	public static function colorConvertHSVtoRGB(h : Single, s : Single, v : Single, out_r : hl.Ref<Single>, out_g : hl.Ref<Single>, out_b : hl.Ref<Single>) {}

	// Inputs Utilities: Keyboard
	public static function isKeyDown(user_key_index : Int) : Bool {return false;}
	public static function isKeyPressed(user_key_index : Int, repeat : Bool = true) : Bool {return false;}
	public static function isKeyReleased(user_key_index : Int) : Bool {return false;}
	public static function getKeyPressedAmount(key_index : Int, repeat_delay : Single, rate : Single) : Int {return 0;}
	//TODO: getKeyName
	public static function captureKeyboardFromApp(want_capture_keyboard_value : Bool = true) {}
	@:deprecated("Obsolete")
	public static function getKeyIndex(imgui_key : ImGuiKey) : Int {return 0;}

	// Inputs Utilities: Mouse
	public static function isMouseDown(button : ImGuiMouseButton) : Bool {return false;}
	public static function isMouseClicked(button : ImGuiMouseButton, repeat : Bool = false) : Bool {return false;}
	public static function isMouseReleased(button : ImGuiMouseButton) : Bool {return false;}
	public static function isMouseDoubleClicked(button : ImGuiMouseButton) : Bool {return false;}
	//TODO: getMouseClickedCount
	public static function isMouseHoveringRect(r_min : ExtDynamic<ImVec2>, r_max : ExtDynamic<ImVec2>, clip : Bool = true) : Bool {return false;}
	public static function isMousePosValid(mouse_pos : ExtDynamic<ImVec2> = null) : Bool {return false;}
	public static function isAnyMouseDown() : Bool {return false;}
	public static function getMousePos() : ExtDynamic<ImVec2> {return null;}
	public static function getMousePosOnOpeningCurrentPopup() : ExtDynamic<ImVec2> {return null;}
	public static function isMouseDragging(button : ImGuiMouseButton, lock_threshold : Single = -1.0) : Bool {return false;}
	public static function getMouseDragDelta(button : ImGuiMouseButton = 0, lock_threshold : Single = -1.0) : ExtDynamic<ImVec2> {return null;}
	public static function resetMouseDragDelta(button : ImGuiMouseButton = 0) {}
	public static function getMouseCursor() : ImGuiMouseCursor {return 0;}
	public static function setMouseCursor(cursor_type : ImGuiMouseCursor) {}
	public static function captureMouseFromApp(want_capture_mouse_value : Bool = true) {}

	// Clipboard Utilities
	static function get_clipboard_text() : hl.Bytes {return null;}
	public static function getClipboardText() : String {
		return @:privateAccess String.fromUTF8(get_clipboard_text());
	}
	public static function setClipboardText(text : String) {}

	// Settings/.Ini Utilities
	public static function loadIniSettingsFromDisk(ini_filename : String) {}
	public static function loadIniSettingsFromMemory(ini_data : String, ini_size : Int = 0) {}
	public static function saveIniSettingsToDisk(ini_filename : String) {}
	static function save_ini_settings_to_memory(out_ini_size : hl.Ref<Int>) : hl.Bytes {return null;}
	public static function saveIniSettingsToMemory(out_ini_size : hl.Ref<Int> = null) : String {
		return @:privateAccess String.fromUTF8(save_ini_settings_to_memory(out_ini_size));
	}

	// Debug Utilities
	//debugCheckVersionAndDataLayout

	// Memory Allocators - Should not be exposed!
	//setAllocatorFunctions(ImGuiMemAllocFunc alloc_func, ImGuiMemFreeFunc free_func, void* user_data = NULL);
	//getAllocatorFunctions(ImGuiMemAllocFunc* p_alloc_func, ImGuiMemFreeFunc* p_free_func, void** p_user_data);
	//memAlloc(size_t size);
	//memFree(void* ptr);

	// (Optional) Platform/OS interface for multi-viewport support
	// Read comments around the ImGuiPlatformIO structure for more details.
	// Note: You may use GetWindowViewport() to get the current viewport of the current window.
	// GetPlatformIO(): ImGuiPlatformIO
	// UpdatePlatformWindows();                                        // call in main loop. will call CreateWindow/ResizeWindow/etc. platform functions for each secondary viewport, and DestroyWindow for each inactive viewport.
	// RenderPlatformWindowsDefault(void* platform_render_arg = NULL, void* renderer_render_arg = NULL); // call in main loop. will call RenderWindow/SwapBuffers platform functions for each secondary viewport which doesn't have the ImGuiViewportFlags_Minimized flag set. May be reimplemented by user for custom rendering needs.
	// DestroyPlatformWindows();                                       // call DestroyWindow platform functions for all viewports. call from backend Shutdown() if you need to close platform windows before imgui shutdown. otherwise will be called by DestroyContext().
	// FindViewportByID(ImGuiID id): ImGuiViewport;                                   // this is a helper for backends.
	// FindViewportByPlatformHandle(void* platform_handle): ImGuiViewport;            // this is a helper for backends. the type platform_handle is decided by the backend (e.g. HWND, MyWindow*, GLFWwindow* etc.)

	// GetIO()->... wrappers
	public static function setFontTexture(texture_id : ImTextureID) {} // Fonts->SetTexID
	public static function setIniFilename(filename : String) {} // IniFilename
	public static function addKeyChar(c : Int) {} // AddInputCharacter
	public static function addKeyEvent(c : Int, down: Bool) {} // AddKeyEvent
	// Shortcut to set MousePos, MouseWheel, MouseDown[0] and MouseDown[1]
	public static function setEvents(dt : Single, mouse_x : Single, mouse_y : Single, wheel : Single, left_click : Bool, right_click : Bool) {}
	public static function setDisplaySize(display_width:Int, display_height:Int) {} // DisplaySize
	public static function wantCaptureMouse() : Bool {return false;} // WantCaptureMouse
	public static function wantCaptureKeyboard() : Bool {return false;} // WantCaptureKeyboard
	public static function setConfigFlags(flags:ImGuiConfigFlags = 0) : Void {} // ConfigFlags
	public static function getConfigFlags() : ImGuiConfigFlags {return 0;} // ConfigFlags
	public static function setUserData(data : Dynamic) {} // UserData; Should be safe to store anything and not be GCd.
	public static function getUserData() : Dynamic {return null;} // UserData


	// ImFontAtlas / ImGui::GetIO().Fonts->... wrappers
	public static function addFontDefault(?config:ExtDynamic<ImFontConfig>) : ImFont { return null; }
	public static function addFontFromFileTtf( filename: String, size: Single, config: ExtDynamic<ImFontConfig> = null, glyphRanges: hl.NativeArray<hl.UI16> = null) : ImFont { return null; }
	public static function addFontFromMemoryTtf( bytes: hl.Bytes, size: Int, font_size: Single, config: ExtDynamic<ImFontConfig> = null, glyphRanges: hl.NativeArray<hl.UI16> = null) : ImFont { return null; }
	public static function buildFont() {} // flat version of ImGui::GetIO().Fonts->Build();

	// internal functions
	public static function initialize(render_fn:Dynamic->Void) : Dynamic {return null;}
	public static function getTexDataAsRgba32() : Dynamic {return null;} // : {buffer:hl.Bytes, width:Int, height:Int} { return{ buffer: null, width: 0, height: 0 }; }

}
