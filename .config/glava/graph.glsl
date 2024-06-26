
/* Vertical scale, larger values will amplify output */
#define VSCALE 500
/* Rendering direction, either -1 (outwards) or 1 (inwards). */
#define DIRECTION 1

/* Color gradient scale, (optionally) used in `COLOR` macro */
#define GRADIENT_SCALE 150
/* Color definition. By default this is a gradient formed by mixing two colors.
   `pos` represents the pixel position relative to the visualizer baseline. */
#define COLOR mix(#BD93F9, #FF79C6, clamp(pos / GRADIENT_SCALE, 0, 1))
/* 1 to draw outline, 0 to disable */
#define DRAW_OUTLINE 0
/* 1 to draw edge highlight, 0 to disable */
#define DRAW_HIGHLIGHT 0
/* Whether to anti-alias the border of the graph, creating a smoother curve.
   This may have a small impact on performance.
   Note: requires `xroot` or `none` opacity to be set */
#define ANTI_ALIAS 1
/* outline color */
#define OUTLINE #262626
/* 1 to join the two channels together in the middle, 0 to clamp both down to zero */
#define JOIN_CHANNELS 1
/* 1 to invert (vertically), 0 otherwise */
#define INVERT 0

/* Gravity step, overrude from `smooth_parameters.glsl` */
#request setgravitystep 2.4

/* Smoothing factor, override from `smooth_parameters.glsl` */
#request setsmoothfactor 0.015
