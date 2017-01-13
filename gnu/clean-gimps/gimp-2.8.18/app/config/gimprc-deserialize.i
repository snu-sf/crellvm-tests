# 1 "gimprc-deserialize.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 317 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "gimprc-deserialize.c" 2
# 21 "gimprc-deserialize.c"
# 1 "../../config.h" 1
# 22 "gimprc-deserialize.c" 2

# 1 "/usr/include/cairo/cairo.h" 1
# 41 "/usr/include/cairo/cairo.h"
# 1 "/usr/include/cairo/cairo-version.h" 1
# 42 "/usr/include/cairo/cairo.h" 2
# 1 "/usr/include/cairo/cairo-features.h" 1
# 43 "/usr/include/cairo/cairo.h" 2
# 1 "/usr/include/cairo/cairo-deprecated.h" 1
# 44 "/usr/include/cairo/cairo.h" 2
# 85 "/usr/include/cairo/cairo.h"
             int
cairo_version (void);

             const char*
cairo_version_string (void);
# 107 "/usr/include/cairo/cairo.h"
typedef int cairo_bool_t;
# 124 "/usr/include/cairo/cairo.h"
typedef struct _cairo cairo_t;
# 153 "/usr/include/cairo/cairo.h"
typedef struct _cairo_surface cairo_surface_t;
# 171 "/usr/include/cairo/cairo.h"
typedef struct _cairo_device cairo_device_t;
# 192 "/usr/include/cairo/cairo.h"
typedef struct _cairo_matrix {
    double xx; double yx;
    double xy; double yy;
    double x0; double y0;
} cairo_matrix_t;
# 220 "/usr/include/cairo/cairo.h"
typedef struct _cairo_pattern cairo_pattern_t;
# 232 "/usr/include/cairo/cairo.h"
typedef void (*cairo_destroy_func_t) (void *data);
# 246 "/usr/include/cairo/cairo.h"
typedef struct _cairo_user_data_key {
    int unused;
} cairo_user_data_key_t;
# 310 "/usr/include/cairo/cairo.h"
typedef enum _cairo_status {
    CAIRO_STATUS_SUCCESS = 0,

    CAIRO_STATUS_NO_MEMORY,
    CAIRO_STATUS_INVALID_RESTORE,
    CAIRO_STATUS_INVALID_POP_GROUP,
    CAIRO_STATUS_NO_CURRENT_POINT,
    CAIRO_STATUS_INVALID_MATRIX,
    CAIRO_STATUS_INVALID_STATUS,
    CAIRO_STATUS_NULL_POINTER,
    CAIRO_STATUS_INVALID_STRING,
    CAIRO_STATUS_INVALID_PATH_DATA,
    CAIRO_STATUS_READ_ERROR,
    CAIRO_STATUS_WRITE_ERROR,
    CAIRO_STATUS_SURFACE_FINISHED,
    CAIRO_STATUS_SURFACE_TYPE_MISMATCH,
    CAIRO_STATUS_PATTERN_TYPE_MISMATCH,
    CAIRO_STATUS_INVALID_CONTENT,
    CAIRO_STATUS_INVALID_FORMAT,
    CAIRO_STATUS_INVALID_VISUAL,
    CAIRO_STATUS_FILE_NOT_FOUND,
    CAIRO_STATUS_INVALID_DASH,
    CAIRO_STATUS_INVALID_DSC_COMMENT,
    CAIRO_STATUS_INVALID_INDEX,
    CAIRO_STATUS_CLIP_NOT_REPRESENTABLE,
    CAIRO_STATUS_TEMP_FILE_ERROR,
    CAIRO_STATUS_INVALID_STRIDE,
    CAIRO_STATUS_FONT_TYPE_MISMATCH,
    CAIRO_STATUS_USER_FONT_IMMUTABLE,
    CAIRO_STATUS_USER_FONT_ERROR,
    CAIRO_STATUS_NEGATIVE_COUNT,
    CAIRO_STATUS_INVALID_CLUSTERS,
    CAIRO_STATUS_INVALID_SLANT,
    CAIRO_STATUS_INVALID_WEIGHT,
    CAIRO_STATUS_INVALID_SIZE,
    CAIRO_STATUS_USER_FONT_NOT_IMPLEMENTED,
    CAIRO_STATUS_DEVICE_TYPE_MISMATCH,
    CAIRO_STATUS_DEVICE_ERROR,
    CAIRO_STATUS_INVALID_MESH_CONSTRUCTION,
    CAIRO_STATUS_DEVICE_FINISHED,
    CAIRO_STATUS_JBIG2_GLOBAL_MISSING,

    CAIRO_STATUS_LAST_STATUS
} cairo_status_t;
# 371 "/usr/include/cairo/cairo.h"
typedef enum _cairo_content {
    CAIRO_CONTENT_COLOR = 0x1000,
    CAIRO_CONTENT_ALPHA = 0x2000,
    CAIRO_CONTENT_COLOR_ALPHA = 0x3000
} cairo_content_t;
# 408 "/usr/include/cairo/cairo.h"
typedef enum _cairo_format {
    CAIRO_FORMAT_INVALID = -1,
    CAIRO_FORMAT_ARGB32 = 0,
    CAIRO_FORMAT_RGB24 = 1,
    CAIRO_FORMAT_A8 = 2,
    CAIRO_FORMAT_A1 = 3,
    CAIRO_FORMAT_RGB16_565 = 4,
    CAIRO_FORMAT_RGB30 = 5
} cairo_format_t;
# 437 "/usr/include/cairo/cairo.h"
typedef cairo_status_t (*cairo_write_func_t) (void *closure,
           const unsigned char *data,
           unsigned int length);
# 459 "/usr/include/cairo/cairo.h"
typedef cairo_status_t (*cairo_read_func_t) (void *closure,
          unsigned char *data,
          unsigned int length);
# 475 "/usr/include/cairo/cairo.h"
typedef struct _cairo_rectangle_int {
    int x, y;
    int width, height;
} cairo_rectangle_int_t;



             cairo_t *
cairo_create (cairo_surface_t *target);

             cairo_t *
cairo_reference (cairo_t *cr);

             void
cairo_destroy (cairo_t *cr);

             unsigned int
cairo_get_reference_count (cairo_t *cr);

             void *
cairo_get_user_data (cairo_t *cr,
       const cairo_user_data_key_t *key);

             cairo_status_t
cairo_set_user_data (cairo_t *cr,
       const cairo_user_data_key_t *key,
       void *user_data,
       cairo_destroy_func_t destroy);

             void
cairo_save (cairo_t *cr);

             void
cairo_restore (cairo_t *cr);

             void
cairo_push_group (cairo_t *cr);

             void
cairo_push_group_with_content (cairo_t *cr, cairo_content_t content);

             cairo_pattern_t *
cairo_pop_group (cairo_t *cr);

             void
cairo_pop_group_to_source (cairo_t *cr);
# 605 "/usr/include/cairo/cairo.h"
typedef enum _cairo_operator {
    CAIRO_OPERATOR_CLEAR,

    CAIRO_OPERATOR_SOURCE,
    CAIRO_OPERATOR_OVER,
    CAIRO_OPERATOR_IN,
    CAIRO_OPERATOR_OUT,
    CAIRO_OPERATOR_ATOP,

    CAIRO_OPERATOR_DEST,
    CAIRO_OPERATOR_DEST_OVER,
    CAIRO_OPERATOR_DEST_IN,
    CAIRO_OPERATOR_DEST_OUT,
    CAIRO_OPERATOR_DEST_ATOP,

    CAIRO_OPERATOR_XOR,
    CAIRO_OPERATOR_ADD,
    CAIRO_OPERATOR_SATURATE,

    CAIRO_OPERATOR_MULTIPLY,
    CAIRO_OPERATOR_SCREEN,
    CAIRO_OPERATOR_OVERLAY,
    CAIRO_OPERATOR_DARKEN,
    CAIRO_OPERATOR_LIGHTEN,
    CAIRO_OPERATOR_COLOR_DODGE,
    CAIRO_OPERATOR_COLOR_BURN,
    CAIRO_OPERATOR_HARD_LIGHT,
    CAIRO_OPERATOR_SOFT_LIGHT,
    CAIRO_OPERATOR_DIFFERENCE,
    CAIRO_OPERATOR_EXCLUSION,
    CAIRO_OPERATOR_HSL_HUE,
    CAIRO_OPERATOR_HSL_SATURATION,
    CAIRO_OPERATOR_HSL_COLOR,
    CAIRO_OPERATOR_HSL_LUMINOSITY
} cairo_operator_t;

             void
cairo_set_operator (cairo_t *cr, cairo_operator_t op);

             void
cairo_set_source (cairo_t *cr, cairo_pattern_t *source);

             void
cairo_set_source_rgb (cairo_t *cr, double red, double green, double blue);

             void
cairo_set_source_rgba (cairo_t *cr,
         double red, double green, double blue,
         double alpha);

             void
cairo_set_source_surface (cairo_t *cr,
     cairo_surface_t *surface,
     double x,
     double y);

             void
cairo_set_tolerance (cairo_t *cr, double tolerance);
# 701 "/usr/include/cairo/cairo.h"
typedef enum _cairo_antialias {
    CAIRO_ANTIALIAS_DEFAULT,


    CAIRO_ANTIALIAS_NONE,
    CAIRO_ANTIALIAS_GRAY,
    CAIRO_ANTIALIAS_SUBPIXEL,


    CAIRO_ANTIALIAS_FAST,
    CAIRO_ANTIALIAS_GOOD,
    CAIRO_ANTIALIAS_BEST
} cairo_antialias_t;

             void
cairo_set_antialias (cairo_t *cr, cairo_antialias_t antialias);
# 745 "/usr/include/cairo/cairo.h"
typedef enum _cairo_fill_rule {
    CAIRO_FILL_RULE_WINDING,
    CAIRO_FILL_RULE_EVEN_ODD
} cairo_fill_rule_t;

             void
cairo_set_fill_rule (cairo_t *cr, cairo_fill_rule_t fill_rule);

             void
cairo_set_line_width (cairo_t *cr, double width);
# 768 "/usr/include/cairo/cairo.h"
typedef enum _cairo_line_cap {
    CAIRO_LINE_CAP_BUTT,
    CAIRO_LINE_CAP_ROUND,
    CAIRO_LINE_CAP_SQUARE
} cairo_line_cap_t;

             void
cairo_set_line_cap (cairo_t *cr, cairo_line_cap_t line_cap);
# 792 "/usr/include/cairo/cairo.h"
typedef enum _cairo_line_join {
    CAIRO_LINE_JOIN_MITER,
    CAIRO_LINE_JOIN_ROUND,
    CAIRO_LINE_JOIN_BEVEL
} cairo_line_join_t;

             void
cairo_set_line_join (cairo_t *cr, cairo_line_join_t line_join);

             void
cairo_set_dash (cairo_t *cr,
  const double *dashes,
  int num_dashes,
  double offset);

             void
cairo_set_miter_limit (cairo_t *cr, double limit);

             void
cairo_translate (cairo_t *cr, double tx, double ty);

             void
cairo_scale (cairo_t *cr, double sx, double sy);

             void
cairo_rotate (cairo_t *cr, double angle);

             void
cairo_transform (cairo_t *cr,
   const cairo_matrix_t *matrix);

             void
cairo_set_matrix (cairo_t *cr,
    const cairo_matrix_t *matrix);

             void
cairo_identity_matrix (cairo_t *cr);

             void
cairo_user_to_device (cairo_t *cr, double *x, double *y);

             void
cairo_user_to_device_distance (cairo_t *cr, double *dx, double *dy);

             void
cairo_device_to_user (cairo_t *cr, double *x, double *y);

             void
cairo_device_to_user_distance (cairo_t *cr, double *dx, double *dy);


             void
cairo_new_path (cairo_t *cr);

             void
cairo_move_to (cairo_t *cr, double x, double y);

             void
cairo_new_sub_path (cairo_t *cr);

             void
cairo_line_to (cairo_t *cr, double x, double y);

             void
cairo_curve_to (cairo_t *cr,
  double x1, double y1,
  double x2, double y2,
  double x3, double y3);

             void
cairo_arc (cairo_t *cr,
    double xc, double yc,
    double radius,
    double angle1, double angle2);

             void
cairo_arc_negative (cairo_t *cr,
      double xc, double yc,
      double radius,
      double angle1, double angle2);
# 881 "/usr/include/cairo/cairo.h"
             void
cairo_rel_move_to (cairo_t *cr, double dx, double dy);

             void
cairo_rel_line_to (cairo_t *cr, double dx, double dy);

             void
cairo_rel_curve_to (cairo_t *cr,
      double dx1, double dy1,
      double dx2, double dy2,
      double dx3, double dy3);

             void
cairo_rectangle (cairo_t *cr,
   double x, double y,
   double width, double height);






             void
cairo_close_path (cairo_t *cr);

             void
cairo_path_extents (cairo_t *cr,
      double *x1, double *y1,
      double *x2, double *y2);


             void
cairo_paint (cairo_t *cr);

             void
cairo_paint_with_alpha (cairo_t *cr,
   double alpha);

             void
cairo_mask (cairo_t *cr,
     cairo_pattern_t *pattern);

             void
cairo_mask_surface (cairo_t *cr,
      cairo_surface_t *surface,
      double surface_x,
      double surface_y);

             void
cairo_stroke (cairo_t *cr);

             void
cairo_stroke_preserve (cairo_t *cr);

             void
cairo_fill (cairo_t *cr);

             void
cairo_fill_preserve (cairo_t *cr);

             void
cairo_copy_page (cairo_t *cr);

             void
cairo_show_page (cairo_t *cr);


             cairo_bool_t
cairo_in_stroke (cairo_t *cr, double x, double y);

             cairo_bool_t
cairo_in_fill (cairo_t *cr, double x, double y);

             cairo_bool_t
cairo_in_clip (cairo_t *cr, double x, double y);


             void
cairo_stroke_extents (cairo_t *cr,
        double *x1, double *y1,
        double *x2, double *y2);

             void
cairo_fill_extents (cairo_t *cr,
      double *x1, double *y1,
      double *x2, double *y2);


             void
cairo_reset_clip (cairo_t *cr);

             void
cairo_clip (cairo_t *cr);

             void
cairo_clip_preserve (cairo_t *cr);

             void
cairo_clip_extents (cairo_t *cr,
      double *x1, double *y1,
      double *x2, double *y2);
# 994 "/usr/include/cairo/cairo.h"
typedef struct _cairo_rectangle {
    double x, y, width, height;
} cairo_rectangle_t;
# 1009 "/usr/include/cairo/cairo.h"
typedef struct _cairo_rectangle_list {
    cairo_status_t status;
    cairo_rectangle_t *rectangles;
    int num_rectangles;
} cairo_rectangle_list_t;

             cairo_rectangle_list_t *
cairo_copy_clip_rectangle_list (cairo_t *cr);

             void
cairo_rectangle_list_destroy (cairo_rectangle_list_t *rectangle_list);
# 1040 "/usr/include/cairo/cairo.h"
typedef struct _cairo_scaled_font cairo_scaled_font_t;
# 1061 "/usr/include/cairo/cairo.h"
typedef struct _cairo_font_face cairo_font_face_t;
# 1089 "/usr/include/cairo/cairo.h"
typedef struct {
    unsigned long index;
    double x;
    double y;
} cairo_glyph_t;

             cairo_glyph_t *
cairo_glyph_allocate (int num_glyphs);

             void
cairo_glyph_free (cairo_glyph_t *glyphs);
# 1121 "/usr/include/cairo/cairo.h"
typedef struct {
    int num_bytes;
    int num_glyphs;
} cairo_text_cluster_t;

             cairo_text_cluster_t *
cairo_text_cluster_allocate (int num_clusters);

             void
cairo_text_cluster_free (cairo_text_cluster_t *clusters);
# 1141 "/usr/include/cairo/cairo.h"
typedef enum _cairo_text_cluster_flags {
    CAIRO_TEXT_CLUSTER_FLAG_BACKWARD = 0x00000001
} cairo_text_cluster_flags_t;
# 1174 "/usr/include/cairo/cairo.h"
typedef struct {
    double x_bearing;
    double y_bearing;
    double width;
    double height;
    double x_advance;
    double y_advance;
} cairo_text_extents_t;
# 1226 "/usr/include/cairo/cairo.h"
typedef struct {
    double ascent;
    double descent;
    double height;
    double max_x_advance;
    double max_y_advance;
} cairo_font_extents_t;
# 1244 "/usr/include/cairo/cairo.h"
typedef enum _cairo_font_slant {
    CAIRO_FONT_SLANT_NORMAL,
    CAIRO_FONT_SLANT_ITALIC,
    CAIRO_FONT_SLANT_OBLIQUE
} cairo_font_slant_t;
# 1259 "/usr/include/cairo/cairo.h"
typedef enum _cairo_font_weight {
    CAIRO_FONT_WEIGHT_NORMAL,
    CAIRO_FONT_WEIGHT_BOLD
} cairo_font_weight_t;
# 1283 "/usr/include/cairo/cairo.h"
typedef enum _cairo_subpixel_order {
    CAIRO_SUBPIXEL_ORDER_DEFAULT,
    CAIRO_SUBPIXEL_ORDER_RGB,
    CAIRO_SUBPIXEL_ORDER_BGR,
    CAIRO_SUBPIXEL_ORDER_VRGB,
    CAIRO_SUBPIXEL_ORDER_VBGR
} cairo_subpixel_order_t;
# 1315 "/usr/include/cairo/cairo.h"
typedef enum _cairo_hint_style {
    CAIRO_HINT_STYLE_DEFAULT,
    CAIRO_HINT_STYLE_NONE,
    CAIRO_HINT_STYLE_SLIGHT,
    CAIRO_HINT_STYLE_MEDIUM,
    CAIRO_HINT_STYLE_FULL
} cairo_hint_style_t;
# 1338 "/usr/include/cairo/cairo.h"
typedef enum _cairo_hint_metrics {
    CAIRO_HINT_METRICS_DEFAULT,
    CAIRO_HINT_METRICS_OFF,
    CAIRO_HINT_METRICS_ON
} cairo_hint_metrics_t;
# 1366 "/usr/include/cairo/cairo.h"
typedef struct _cairo_font_options cairo_font_options_t;

             cairo_font_options_t *
cairo_font_options_create (void);

             cairo_font_options_t *
cairo_font_options_copy (const cairo_font_options_t *original);

             void
cairo_font_options_destroy (cairo_font_options_t *options);

             cairo_status_t
cairo_font_options_status (cairo_font_options_t *options);

             void
cairo_font_options_merge (cairo_font_options_t *options,
     const cairo_font_options_t *other);
             cairo_bool_t
cairo_font_options_equal (const cairo_font_options_t *options,
     const cairo_font_options_t *other);

             unsigned long
cairo_font_options_hash (const cairo_font_options_t *options);

             void
cairo_font_options_set_antialias (cairo_font_options_t *options,
      cairo_antialias_t antialias);
             cairo_antialias_t
cairo_font_options_get_antialias (const cairo_font_options_t *options);

             void
cairo_font_options_set_subpixel_order (cairo_font_options_t *options,
           cairo_subpixel_order_t subpixel_order);
             cairo_subpixel_order_t
cairo_font_options_get_subpixel_order (const cairo_font_options_t *options);

             void
cairo_font_options_set_hint_style (cairo_font_options_t *options,
       cairo_hint_style_t hint_style);
             cairo_hint_style_t
cairo_font_options_get_hint_style (const cairo_font_options_t *options);

             void
cairo_font_options_set_hint_metrics (cairo_font_options_t *options,
         cairo_hint_metrics_t hint_metrics);
             cairo_hint_metrics_t
cairo_font_options_get_hint_metrics (const cairo_font_options_t *options);




             void
cairo_select_font_face (cairo_t *cr,
   const char *family,
   cairo_font_slant_t slant,
   cairo_font_weight_t weight);

             void
cairo_set_font_size (cairo_t *cr, double size);

             void
cairo_set_font_matrix (cairo_t *cr,
         const cairo_matrix_t *matrix);

             void
cairo_get_font_matrix (cairo_t *cr,
         cairo_matrix_t *matrix);

             void
cairo_set_font_options (cairo_t *cr,
   const cairo_font_options_t *options);

             void
cairo_get_font_options (cairo_t *cr,
   cairo_font_options_t *options);

             void
cairo_set_font_face (cairo_t *cr, cairo_font_face_t *font_face);

             cairo_font_face_t *
cairo_get_font_face (cairo_t *cr);

             void
cairo_set_scaled_font (cairo_t *cr,
         const cairo_scaled_font_t *scaled_font);

             cairo_scaled_font_t *
cairo_get_scaled_font (cairo_t *cr);

             void
cairo_show_text (cairo_t *cr, const char *utf8);

             void
cairo_show_glyphs (cairo_t *cr, const cairo_glyph_t *glyphs, int num_glyphs);

             void
cairo_show_text_glyphs (cairo_t *cr,
   const char *utf8,
   int utf8_len,
   const cairo_glyph_t *glyphs,
   int num_glyphs,
   const cairo_text_cluster_t *clusters,
   int num_clusters,
   cairo_text_cluster_flags_t cluster_flags);

             void
cairo_text_path (cairo_t *cr, const char *utf8);

             void
cairo_glyph_path (cairo_t *cr, const cairo_glyph_t *glyphs, int num_glyphs);

             void
cairo_text_extents (cairo_t *cr,
      const char *utf8,
      cairo_text_extents_t *extents);

             void
cairo_glyph_extents (cairo_t *cr,
       const cairo_glyph_t *glyphs,
       int num_glyphs,
       cairo_text_extents_t *extents);

             void
cairo_font_extents (cairo_t *cr,
      cairo_font_extents_t *extents);



             cairo_font_face_t *
cairo_font_face_reference (cairo_font_face_t *font_face);

             void
cairo_font_face_destroy (cairo_font_face_t *font_face);

             unsigned int
cairo_font_face_get_reference_count (cairo_font_face_t *font_face);

             cairo_status_t
cairo_font_face_status (cairo_font_face_t *font_face);
# 1546 "/usr/include/cairo/cairo.h"
typedef enum _cairo_font_type {
    CAIRO_FONT_TYPE_TOY,
    CAIRO_FONT_TYPE_FT,
    CAIRO_FONT_TYPE_WIN32,
    CAIRO_FONT_TYPE_QUARTZ,
    CAIRO_FONT_TYPE_USER
} cairo_font_type_t;

             cairo_font_type_t
cairo_font_face_get_type (cairo_font_face_t *font_face);

             void *
cairo_font_face_get_user_data (cairo_font_face_t *font_face,
          const cairo_user_data_key_t *key);

             cairo_status_t
cairo_font_face_set_user_data (cairo_font_face_t *font_face,
          const cairo_user_data_key_t *key,
          void *user_data,
          cairo_destroy_func_t destroy);



             cairo_scaled_font_t *
cairo_scaled_font_create (cairo_font_face_t *font_face,
     const cairo_matrix_t *font_matrix,
     const cairo_matrix_t *ctm,
     const cairo_font_options_t *options);

             cairo_scaled_font_t *
cairo_scaled_font_reference (cairo_scaled_font_t *scaled_font);

             void
cairo_scaled_font_destroy (cairo_scaled_font_t *scaled_font);

             unsigned int
cairo_scaled_font_get_reference_count (cairo_scaled_font_t *scaled_font);

             cairo_status_t
cairo_scaled_font_status (cairo_scaled_font_t *scaled_font);

             cairo_font_type_t
cairo_scaled_font_get_type (cairo_scaled_font_t *scaled_font);

             void *
cairo_scaled_font_get_user_data (cairo_scaled_font_t *scaled_font,
     const cairo_user_data_key_t *key);

             cairo_status_t
cairo_scaled_font_set_user_data (cairo_scaled_font_t *scaled_font,
     const cairo_user_data_key_t *key,
     void *user_data,
     cairo_destroy_func_t destroy);

             void
cairo_scaled_font_extents (cairo_scaled_font_t *scaled_font,
      cairo_font_extents_t *extents);

             void
cairo_scaled_font_text_extents (cairo_scaled_font_t *scaled_font,
    const char *utf8,
    cairo_text_extents_t *extents);

             void
cairo_scaled_font_glyph_extents (cairo_scaled_font_t *scaled_font,
     const cairo_glyph_t *glyphs,
     int num_glyphs,
     cairo_text_extents_t *extents);

             cairo_status_t
cairo_scaled_font_text_to_glyphs (cairo_scaled_font_t *scaled_font,
      double x,
      double y,
      const char *utf8,
      int utf8_len,
      cairo_glyph_t **glyphs,
      int *num_glyphs,
      cairo_text_cluster_t **clusters,
      int *num_clusters,
      cairo_text_cluster_flags_t *cluster_flags);

             cairo_font_face_t *
cairo_scaled_font_get_font_face (cairo_scaled_font_t *scaled_font);

             void
cairo_scaled_font_get_font_matrix (cairo_scaled_font_t *scaled_font,
       cairo_matrix_t *font_matrix);

             void
cairo_scaled_font_get_ctm (cairo_scaled_font_t *scaled_font,
      cairo_matrix_t *ctm);

             void
cairo_scaled_font_get_scale_matrix (cairo_scaled_font_t *scaled_font,
        cairo_matrix_t *scale_matrix);

             void
cairo_scaled_font_get_font_options (cairo_scaled_font_t *scaled_font,
        cairo_font_options_t *options);




             cairo_font_face_t *
cairo_toy_font_face_create (const char *family,
       cairo_font_slant_t slant,
       cairo_font_weight_t weight);

             const char *
cairo_toy_font_face_get_family (cairo_font_face_t *font_face);

             cairo_font_slant_t
cairo_toy_font_face_get_slant (cairo_font_face_t *font_face);

             cairo_font_weight_t
cairo_toy_font_face_get_weight (cairo_font_face_t *font_face);




             cairo_font_face_t *
cairo_user_font_face_create (void);
# 1703 "/usr/include/cairo/cairo.h"
typedef cairo_status_t (*cairo_user_scaled_font_init_func_t) (cairo_scaled_font_t *scaled_font,
             cairo_t *cr,
             cairo_font_extents_t *extents);
# 1750 "/usr/include/cairo/cairo.h"
typedef cairo_status_t (*cairo_user_scaled_font_render_glyph_func_t) (cairo_scaled_font_t *scaled_font,
              unsigned long glyph,
              cairo_t *cr,
              cairo_text_extents_t *extents);
# 1820 "/usr/include/cairo/cairo.h"
typedef cairo_status_t (*cairo_user_scaled_font_text_to_glyphs_func_t) (cairo_scaled_font_t *scaled_font,
         const char *utf8,
         int utf8_len,
         cairo_glyph_t **glyphs,
         int *num_glyphs,
         cairo_text_cluster_t **clusters,
         int *num_clusters,
         cairo_text_cluster_flags_t *cluster_flags);
# 1867 "/usr/include/cairo/cairo.h"
typedef cairo_status_t (*cairo_user_scaled_font_unicode_to_glyph_func_t) (cairo_scaled_font_t *scaled_font,
           unsigned long unicode,
           unsigned long *glyph_index);



             void
cairo_user_font_face_set_init_func (cairo_font_face_t *font_face,
        cairo_user_scaled_font_init_func_t init_func);

             void
cairo_user_font_face_set_render_glyph_func (cairo_font_face_t *font_face,
         cairo_user_scaled_font_render_glyph_func_t render_glyph_func);

             void
cairo_user_font_face_set_text_to_glyphs_func (cairo_font_face_t *font_face,
           cairo_user_scaled_font_text_to_glyphs_func_t text_to_glyphs_func);

             void
cairo_user_font_face_set_unicode_to_glyph_func (cairo_font_face_t *font_face,
             cairo_user_scaled_font_unicode_to_glyph_func_t unicode_to_glyph_func);



             cairo_user_scaled_font_init_func_t
cairo_user_font_face_get_init_func (cairo_font_face_t *font_face);

             cairo_user_scaled_font_render_glyph_func_t
cairo_user_font_face_get_render_glyph_func (cairo_font_face_t *font_face);

             cairo_user_scaled_font_text_to_glyphs_func_t
cairo_user_font_face_get_text_to_glyphs_func (cairo_font_face_t *font_face);

             cairo_user_scaled_font_unicode_to_glyph_func_t
cairo_user_font_face_get_unicode_to_glyph_func (cairo_font_face_t *font_face);




             cairo_operator_t
cairo_get_operator (cairo_t *cr);

             cairo_pattern_t *
cairo_get_source (cairo_t *cr);

             double
cairo_get_tolerance (cairo_t *cr);

             cairo_antialias_t
cairo_get_antialias (cairo_t *cr);

             cairo_bool_t
cairo_has_current_point (cairo_t *cr);

             void
cairo_get_current_point (cairo_t *cr, double *x, double *y);

             cairo_fill_rule_t
cairo_get_fill_rule (cairo_t *cr);

             double
cairo_get_line_width (cairo_t *cr);

             cairo_line_cap_t
cairo_get_line_cap (cairo_t *cr);

             cairo_line_join_t
cairo_get_line_join (cairo_t *cr);

             double
cairo_get_miter_limit (cairo_t *cr);

             int
cairo_get_dash_count (cairo_t *cr);

             void
cairo_get_dash (cairo_t *cr, double *dashes, double *offset);

             void
cairo_get_matrix (cairo_t *cr, cairo_matrix_t *matrix);

             cairo_surface_t *
cairo_get_target (cairo_t *cr);

             cairo_surface_t *
cairo_get_group_target (cairo_t *cr);
# 1967 "/usr/include/cairo/cairo.h"
typedef enum _cairo_path_data_type {
    CAIRO_PATH_MOVE_TO,
    CAIRO_PATH_LINE_TO,
    CAIRO_PATH_CURVE_TO,
    CAIRO_PATH_CLOSE_PATH
} cairo_path_data_type_t;
# 2042 "/usr/include/cairo/cairo.h"
typedef union _cairo_path_data_t cairo_path_data_t;
union _cairo_path_data_t {
    struct {
 cairo_path_data_type_t type;
 int length;
    } header;
    struct {
 double x, y;
    } point;
};
# 2074 "/usr/include/cairo/cairo.h"
typedef struct cairo_path {
    cairo_status_t status;
    cairo_path_data_t *data;
    int num_data;
} cairo_path_t;

             cairo_path_t *
cairo_copy_path (cairo_t *cr);

             cairo_path_t *
cairo_copy_path_flat (cairo_t *cr);

             void
cairo_append_path (cairo_t *cr,
     const cairo_path_t *path);

             void
cairo_path_destroy (cairo_path_t *path);



             cairo_status_t
cairo_status (cairo_t *cr);

             const char *
cairo_status_to_string (cairo_status_t status);



             cairo_device_t *
cairo_device_reference (cairo_device_t *device);
# 2137 "/usr/include/cairo/cairo.h"
typedef enum _cairo_device_type {
    CAIRO_DEVICE_TYPE_DRM,
    CAIRO_DEVICE_TYPE_GL,
    CAIRO_DEVICE_TYPE_SCRIPT,
    CAIRO_DEVICE_TYPE_XCB,
    CAIRO_DEVICE_TYPE_XLIB,
    CAIRO_DEVICE_TYPE_XML,
    CAIRO_DEVICE_TYPE_COGL,
    CAIRO_DEVICE_TYPE_WIN32,

    CAIRO_DEVICE_TYPE_INVALID = -1
} cairo_device_type_t;

             cairo_device_type_t
cairo_device_get_type (cairo_device_t *device);

             cairo_status_t
cairo_device_status (cairo_device_t *device);

             cairo_status_t
cairo_device_acquire (cairo_device_t *device);

             void
cairo_device_release (cairo_device_t *device);

             void
cairo_device_flush (cairo_device_t *device);

             void
cairo_device_finish (cairo_device_t *device);

             void
cairo_device_destroy (cairo_device_t *device);

             unsigned int
cairo_device_get_reference_count (cairo_device_t *device);

             void *
cairo_device_get_user_data (cairo_device_t *device,
       const cairo_user_data_key_t *key);

             cairo_status_t
cairo_device_set_user_data (cairo_device_t *device,
       const cairo_user_data_key_t *key,
       void *user_data,
       cairo_destroy_func_t destroy);




             cairo_surface_t *
cairo_surface_create_similar (cairo_surface_t *other,
         cairo_content_t content,
         int width,
         int height);

             cairo_surface_t *
cairo_surface_create_similar_image (cairo_surface_t *other,
        cairo_format_t format,
        int width,
        int height);

             cairo_surface_t *
cairo_surface_map_to_image (cairo_surface_t *surface,
       const cairo_rectangle_int_t *extents);

             void
cairo_surface_unmap_image (cairo_surface_t *surface,
      cairo_surface_t *image);

             cairo_surface_t *
cairo_surface_create_for_rectangle (cairo_surface_t *target,
                                    double x,
                                    double y,
                                    double width,
                                    double height);
# 2223 "/usr/include/cairo/cairo.h"
typedef enum {
 CAIRO_SURFACE_OBSERVER_NORMAL = 0,
 CAIRO_SURFACE_OBSERVER_RECORD_OPERATIONS = 0x1
} cairo_surface_observer_mode_t;

             cairo_surface_t *
cairo_surface_create_observer (cairo_surface_t *target,
          cairo_surface_observer_mode_t mode);

typedef void (*cairo_surface_observer_callback_t) (cairo_surface_t *observer,
         cairo_surface_t *target,
         void *data);

             cairo_status_t
cairo_surface_observer_add_paint_callback (cairo_surface_t *abstract_surface,
        cairo_surface_observer_callback_t func,
        void *data);

             cairo_status_t
cairo_surface_observer_add_mask_callback (cairo_surface_t *abstract_surface,
       cairo_surface_observer_callback_t func,
       void *data);

             cairo_status_t
cairo_surface_observer_add_fill_callback (cairo_surface_t *abstract_surface,
       cairo_surface_observer_callback_t func,
       void *data);

             cairo_status_t
cairo_surface_observer_add_stroke_callback (cairo_surface_t *abstract_surface,
         cairo_surface_observer_callback_t func,
         void *data);

             cairo_status_t
cairo_surface_observer_add_glyphs_callback (cairo_surface_t *abstract_surface,
         cairo_surface_observer_callback_t func,
         void *data);

             cairo_status_t
cairo_surface_observer_add_flush_callback (cairo_surface_t *abstract_surface,
        cairo_surface_observer_callback_t func,
        void *data);

             cairo_status_t
cairo_surface_observer_add_finish_callback (cairo_surface_t *abstract_surface,
         cairo_surface_observer_callback_t func,
         void *data);

             cairo_status_t
cairo_surface_observer_print (cairo_surface_t *surface,
         cairo_write_func_t write_func,
         void *closure);
             double
cairo_surface_observer_elapsed (cairo_surface_t *surface);

             cairo_status_t
cairo_device_observer_print (cairo_device_t *device,
        cairo_write_func_t write_func,
        void *closure);

             double
cairo_device_observer_elapsed (cairo_device_t *device);

             double
cairo_device_observer_paint_elapsed (cairo_device_t *device);

             double
cairo_device_observer_mask_elapsed (cairo_device_t *device);

             double
cairo_device_observer_fill_elapsed (cairo_device_t *device);

             double
cairo_device_observer_stroke_elapsed (cairo_device_t *device);

             double
cairo_device_observer_glyphs_elapsed (cairo_device_t *device);

             cairo_surface_t *
cairo_surface_reference (cairo_surface_t *surface);

             void
cairo_surface_finish (cairo_surface_t *surface);

             void
cairo_surface_destroy (cairo_surface_t *surface);

             cairo_device_t *
cairo_surface_get_device (cairo_surface_t *surface);

             unsigned int
cairo_surface_get_reference_count (cairo_surface_t *surface);

             cairo_status_t
cairo_surface_status (cairo_surface_t *surface);
# 2372 "/usr/include/cairo/cairo.h"
typedef enum _cairo_surface_type {
    CAIRO_SURFACE_TYPE_IMAGE,
    CAIRO_SURFACE_TYPE_PDF,
    CAIRO_SURFACE_TYPE_PS,
    CAIRO_SURFACE_TYPE_XLIB,
    CAIRO_SURFACE_TYPE_XCB,
    CAIRO_SURFACE_TYPE_GLITZ,
    CAIRO_SURFACE_TYPE_QUARTZ,
    CAIRO_SURFACE_TYPE_WIN32,
    CAIRO_SURFACE_TYPE_BEOS,
    CAIRO_SURFACE_TYPE_DIRECTFB,
    CAIRO_SURFACE_TYPE_SVG,
    CAIRO_SURFACE_TYPE_OS2,
    CAIRO_SURFACE_TYPE_WIN32_PRINTING,
    CAIRO_SURFACE_TYPE_QUARTZ_IMAGE,
    CAIRO_SURFACE_TYPE_SCRIPT,
    CAIRO_SURFACE_TYPE_QT,
    CAIRO_SURFACE_TYPE_RECORDING,
    CAIRO_SURFACE_TYPE_VG,
    CAIRO_SURFACE_TYPE_GL,
    CAIRO_SURFACE_TYPE_DRM,
    CAIRO_SURFACE_TYPE_TEE,
    CAIRO_SURFACE_TYPE_XML,
    CAIRO_SURFACE_TYPE_SKIA,
    CAIRO_SURFACE_TYPE_SUBSURFACE,
    CAIRO_SURFACE_TYPE_COGL
} cairo_surface_type_t;

             cairo_surface_type_t
cairo_surface_get_type (cairo_surface_t *surface);

             cairo_content_t
cairo_surface_get_content (cairo_surface_t *surface);



             cairo_status_t
cairo_surface_write_to_png (cairo_surface_t *surface,
       const char *filename);

             cairo_status_t
cairo_surface_write_to_png_stream (cairo_surface_t *surface,
       cairo_write_func_t write_func,
       void *closure);



             void *
cairo_surface_get_user_data (cairo_surface_t *surface,
        const cairo_user_data_key_t *key);

             cairo_status_t
cairo_surface_set_user_data (cairo_surface_t *surface,
        const cairo_user_data_key_t *key,
        void *user_data,
        cairo_destroy_func_t destroy);
# 2438 "/usr/include/cairo/cairo.h"
             void
cairo_surface_get_mime_data (cairo_surface_t *surface,
                             const char *mime_type,
                             const unsigned char **data,
                             unsigned long *length);

             cairo_status_t
cairo_surface_set_mime_data (cairo_surface_t *surface,
                             const char *mime_type,
                             const unsigned char *data,
                             unsigned long length,
        cairo_destroy_func_t destroy,
        void *closure);

             cairo_bool_t
cairo_surface_supports_mime_type (cairo_surface_t *surface,
      const char *mime_type);

             void
cairo_surface_get_font_options (cairo_surface_t *surface,
    cairo_font_options_t *options);

             void
cairo_surface_flush (cairo_surface_t *surface);

             void
cairo_surface_mark_dirty (cairo_surface_t *surface);

             void
cairo_surface_mark_dirty_rectangle (cairo_surface_t *surface,
        int x,
        int y,
        int width,
        int height);

             void
cairo_surface_set_device_scale (cairo_surface_t *surface,
    double x_scale,
    double y_scale);

             void
cairo_surface_get_device_scale (cairo_surface_t *surface,
    double *x_scale,
    double *y_scale);

             void
cairo_surface_set_device_offset (cairo_surface_t *surface,
     double x_offset,
     double y_offset);

             void
cairo_surface_get_device_offset (cairo_surface_t *surface,
     double *x_offset,
     double *y_offset);

             void
cairo_surface_set_fallback_resolution (cairo_surface_t *surface,
           double x_pixels_per_inch,
           double y_pixels_per_inch);

             void
cairo_surface_get_fallback_resolution (cairo_surface_t *surface,
           double *x_pixels_per_inch,
           double *y_pixels_per_inch);

             void
cairo_surface_copy_page (cairo_surface_t *surface);

             void
cairo_surface_show_page (cairo_surface_t *surface);

             cairo_bool_t
cairo_surface_has_show_text_glyphs (cairo_surface_t *surface);



             cairo_surface_t *
cairo_image_surface_create (cairo_format_t format,
       int width,
       int height);

             int
cairo_format_stride_for_width (cairo_format_t format,
          int width);

             cairo_surface_t *
cairo_image_surface_create_for_data (unsigned char *data,
         cairo_format_t format,
         int width,
         int height,
         int stride);

             unsigned char *
cairo_image_surface_get_data (cairo_surface_t *surface);

             cairo_format_t
cairo_image_surface_get_format (cairo_surface_t *surface);

             int
cairo_image_surface_get_width (cairo_surface_t *surface);

             int
cairo_image_surface_get_height (cairo_surface_t *surface);

             int
cairo_image_surface_get_stride (cairo_surface_t *surface);



             cairo_surface_t *
cairo_image_surface_create_from_png (const char *filename);

             cairo_surface_t *
cairo_image_surface_create_from_png_stream (cairo_read_func_t read_func,
         void *closure);





             cairo_surface_t *
cairo_recording_surface_create (cairo_content_t content,
                                const cairo_rectangle_t *extents);

             void
cairo_recording_surface_ink_extents (cairo_surface_t *surface,
                                     double *x0,
                                     double *y0,
                                     double *width,
                                     double *height);

             cairo_bool_t
cairo_recording_surface_get_extents (cairo_surface_t *surface,
         cairo_rectangle_t *extents);
# 2599 "/usr/include/cairo/cairo.h"
typedef cairo_surface_t *
(*cairo_raster_source_acquire_func_t) (cairo_pattern_t *pattern,
           void *callback_data,
           cairo_surface_t *target,
           const cairo_rectangle_int_t *extents);
# 2618 "/usr/include/cairo/cairo.h"
typedef void
(*cairo_raster_source_release_func_t) (cairo_pattern_t *pattern,
           void *callback_data,
           cairo_surface_t *surface);
# 2639 "/usr/include/cairo/cairo.h"
typedef cairo_status_t
(*cairo_raster_source_snapshot_func_t) (cairo_pattern_t *pattern,
     void *callback_data);
# 2657 "/usr/include/cairo/cairo.h"
typedef cairo_status_t
(*cairo_raster_source_copy_func_t) (cairo_pattern_t *pattern,
        void *callback_data,
        const cairo_pattern_t *other);
# 2672 "/usr/include/cairo/cairo.h"
typedef void
(*cairo_raster_source_finish_func_t) (cairo_pattern_t *pattern,
          void *callback_data);

             cairo_pattern_t *
cairo_pattern_create_raster_source (void *user_data,
        cairo_content_t content,
        int width, int height);

             void
cairo_raster_source_pattern_set_callback_data (cairo_pattern_t *pattern,
            void *data);

             void *
cairo_raster_source_pattern_get_callback_data (cairo_pattern_t *pattern);

             void
cairo_raster_source_pattern_set_acquire (cairo_pattern_t *pattern,
      cairo_raster_source_acquire_func_t acquire,
      cairo_raster_source_release_func_t release);

             void
cairo_raster_source_pattern_get_acquire (cairo_pattern_t *pattern,
      cairo_raster_source_acquire_func_t *acquire,
      cairo_raster_source_release_func_t *release);
             void
cairo_raster_source_pattern_set_snapshot (cairo_pattern_t *pattern,
       cairo_raster_source_snapshot_func_t snapshot);

             cairo_raster_source_snapshot_func_t
cairo_raster_source_pattern_get_snapshot (cairo_pattern_t *pattern);

             void
cairo_raster_source_pattern_set_copy (cairo_pattern_t *pattern,
          cairo_raster_source_copy_func_t copy);

             cairo_raster_source_copy_func_t
cairo_raster_source_pattern_get_copy (cairo_pattern_t *pattern);

             void
cairo_raster_source_pattern_set_finish (cairo_pattern_t *pattern,
     cairo_raster_source_finish_func_t finish);

             cairo_raster_source_finish_func_t
cairo_raster_source_pattern_get_finish (cairo_pattern_t *pattern);



             cairo_pattern_t *
cairo_pattern_create_rgb (double red, double green, double blue);

             cairo_pattern_t *
cairo_pattern_create_rgba (double red, double green, double blue,
      double alpha);

             cairo_pattern_t *
cairo_pattern_create_for_surface (cairo_surface_t *surface);

             cairo_pattern_t *
cairo_pattern_create_linear (double x0, double y0,
        double x1, double y1);

             cairo_pattern_t *
cairo_pattern_create_radial (double cx0, double cy0, double radius0,
        double cx1, double cy1, double radius1);

             cairo_pattern_t *
cairo_pattern_create_mesh (void);

             cairo_pattern_t *
cairo_pattern_reference (cairo_pattern_t *pattern);

             void
cairo_pattern_destroy (cairo_pattern_t *pattern);

             unsigned int
cairo_pattern_get_reference_count (cairo_pattern_t *pattern);

             cairo_status_t
cairo_pattern_status (cairo_pattern_t *pattern);

             void *
cairo_pattern_get_user_data (cairo_pattern_t *pattern,
        const cairo_user_data_key_t *key);

             cairo_status_t
cairo_pattern_set_user_data (cairo_pattern_t *pattern,
        const cairo_user_data_key_t *key,
        void *user_data,
        cairo_destroy_func_t destroy);
# 2795 "/usr/include/cairo/cairo.h"
typedef enum _cairo_pattern_type {
    CAIRO_PATTERN_TYPE_SOLID,
    CAIRO_PATTERN_TYPE_SURFACE,
    CAIRO_PATTERN_TYPE_LINEAR,
    CAIRO_PATTERN_TYPE_RADIAL,
    CAIRO_PATTERN_TYPE_MESH,
    CAIRO_PATTERN_TYPE_RASTER_SOURCE
} cairo_pattern_type_t;

             cairo_pattern_type_t
cairo_pattern_get_type (cairo_pattern_t *pattern);

             void
cairo_pattern_add_color_stop_rgb (cairo_pattern_t *pattern,
      double offset,
      double red, double green, double blue);

             void
cairo_pattern_add_color_stop_rgba (cairo_pattern_t *pattern,
       double offset,
       double red, double green, double blue,
       double alpha);

             void
cairo_mesh_pattern_begin_patch (cairo_pattern_t *pattern);

             void
cairo_mesh_pattern_end_patch (cairo_pattern_t *pattern);

             void
cairo_mesh_pattern_curve_to (cairo_pattern_t *pattern,
        double x1, double y1,
        double x2, double y2,
        double x3, double y3);

             void
cairo_mesh_pattern_line_to (cairo_pattern_t *pattern,
       double x, double y);

             void
cairo_mesh_pattern_move_to (cairo_pattern_t *pattern,
       double x, double y);

             void
cairo_mesh_pattern_set_control_point (cairo_pattern_t *pattern,
          unsigned int point_num,
          double x, double y);

             void
cairo_mesh_pattern_set_corner_color_rgb (cairo_pattern_t *pattern,
      unsigned int corner_num,
      double red, double green, double blue);

             void
cairo_mesh_pattern_set_corner_color_rgba (cairo_pattern_t *pattern,
       unsigned int corner_num,
       double red, double green, double blue,
       double alpha);

             void
cairo_pattern_set_matrix (cairo_pattern_t *pattern,
     const cairo_matrix_t *matrix);

             void
cairo_pattern_get_matrix (cairo_pattern_t *pattern,
     cairo_matrix_t *matrix);
# 2887 "/usr/include/cairo/cairo.h"
typedef enum _cairo_extend {
    CAIRO_EXTEND_NONE,
    CAIRO_EXTEND_REPEAT,
    CAIRO_EXTEND_REFLECT,
    CAIRO_EXTEND_PAD
} cairo_extend_t;

             void
cairo_pattern_set_extend (cairo_pattern_t *pattern, cairo_extend_t extend);

             cairo_extend_t
cairo_pattern_get_extend (cairo_pattern_t *pattern);
# 2920 "/usr/include/cairo/cairo.h"
typedef enum _cairo_filter {
    CAIRO_FILTER_FAST,
    CAIRO_FILTER_GOOD,
    CAIRO_FILTER_BEST,
    CAIRO_FILTER_NEAREST,
    CAIRO_FILTER_BILINEAR,
    CAIRO_FILTER_GAUSSIAN
} cairo_filter_t;

             void
cairo_pattern_set_filter (cairo_pattern_t *pattern, cairo_filter_t filter);

             cairo_filter_t
cairo_pattern_get_filter (cairo_pattern_t *pattern);

             cairo_status_t
cairo_pattern_get_rgba (cairo_pattern_t *pattern,
   double *red, double *green,
   double *blue, double *alpha);

             cairo_status_t
cairo_pattern_get_surface (cairo_pattern_t *pattern,
      cairo_surface_t **surface);


             cairo_status_t
cairo_pattern_get_color_stop_rgba (cairo_pattern_t *pattern,
       int index, double *offset,
       double *red, double *green,
       double *blue, double *alpha);

             cairo_status_t
cairo_pattern_get_color_stop_count (cairo_pattern_t *pattern,
        int *count);

             cairo_status_t
cairo_pattern_get_linear_points (cairo_pattern_t *pattern,
     double *x0, double *y0,
     double *x1, double *y1);

             cairo_status_t
cairo_pattern_get_radial_circles (cairo_pattern_t *pattern,
      double *x0, double *y0, double *r0,
      double *x1, double *y1, double *r1);

             cairo_status_t
cairo_mesh_pattern_get_patch_count (cairo_pattern_t *pattern,
        unsigned int *count);

             cairo_path_t *
cairo_mesh_pattern_get_path (cairo_pattern_t *pattern,
        unsigned int patch_num);

             cairo_status_t
cairo_mesh_pattern_get_corner_color_rgba (cairo_pattern_t *pattern,
       unsigned int patch_num,
       unsigned int corner_num,
       double *red, double *green,
       double *blue, double *alpha);

             cairo_status_t
cairo_mesh_pattern_get_control_point (cairo_pattern_t *pattern,
          unsigned int patch_num,
          unsigned int point_num,
          double *x, double *y);



             void
cairo_matrix_init (cairo_matrix_t *matrix,
     double xx, double yx,
     double xy, double yy,
     double x0, double y0);

             void
cairo_matrix_init_identity (cairo_matrix_t *matrix);

             void
cairo_matrix_init_translate (cairo_matrix_t *matrix,
        double tx, double ty);

             void
cairo_matrix_init_scale (cairo_matrix_t *matrix,
    double sx, double sy);

             void
cairo_matrix_init_rotate (cairo_matrix_t *matrix,
     double radians);

             void
cairo_matrix_translate (cairo_matrix_t *matrix, double tx, double ty);

             void
cairo_matrix_scale (cairo_matrix_t *matrix, double sx, double sy);

             void
cairo_matrix_rotate (cairo_matrix_t *matrix, double radians);

             cairo_status_t
cairo_matrix_invert (cairo_matrix_t *matrix);

             void
cairo_matrix_multiply (cairo_matrix_t *result,
         const cairo_matrix_t *a,
         const cairo_matrix_t *b);

             void
cairo_matrix_transform_distance (const cairo_matrix_t *matrix,
     double *dx, double *dy);

             void
cairo_matrix_transform_point (const cairo_matrix_t *matrix,
         double *x, double *y);
# 3049 "/usr/include/cairo/cairo.h"
typedef struct _cairo_region cairo_region_t;
# 3062 "/usr/include/cairo/cairo.h"
typedef enum _cairo_region_overlap {
    CAIRO_REGION_OVERLAP_IN,
    CAIRO_REGION_OVERLAP_OUT,
    CAIRO_REGION_OVERLAP_PART
} cairo_region_overlap_t;

             cairo_region_t *
cairo_region_create (void);

             cairo_region_t *
cairo_region_create_rectangle (const cairo_rectangle_int_t *rectangle);

             cairo_region_t *
cairo_region_create_rectangles (const cairo_rectangle_int_t *rects,
    int count);

             cairo_region_t *
cairo_region_copy (const cairo_region_t *original);

             cairo_region_t *
cairo_region_reference (cairo_region_t *region);

             void
cairo_region_destroy (cairo_region_t *region);

             cairo_bool_t
cairo_region_equal (const cairo_region_t *a, const cairo_region_t *b);

             cairo_status_t
cairo_region_status (const cairo_region_t *region);

             void
cairo_region_get_extents (const cairo_region_t *region,
     cairo_rectangle_int_t *extents);

             int
cairo_region_num_rectangles (const cairo_region_t *region);

             void
cairo_region_get_rectangle (const cairo_region_t *region,
       int nth,
       cairo_rectangle_int_t *rectangle);

             cairo_bool_t
cairo_region_is_empty (const cairo_region_t *region);

             cairo_region_overlap_t
cairo_region_contains_rectangle (const cairo_region_t *region,
     const cairo_rectangle_int_t *rectangle);

             cairo_bool_t
cairo_region_contains_point (const cairo_region_t *region, int x, int y);

             void
cairo_region_translate (cairo_region_t *region, int dx, int dy);

             cairo_status_t
cairo_region_subtract (cairo_region_t *dst, const cairo_region_t *other);

             cairo_status_t
cairo_region_subtract_rectangle (cairo_region_t *dst,
     const cairo_rectangle_int_t *rectangle);

             cairo_status_t
cairo_region_intersect (cairo_region_t *dst, const cairo_region_t *other);

             cairo_status_t
cairo_region_intersect_rectangle (cairo_region_t *dst,
      const cairo_rectangle_int_t *rectangle);

             cairo_status_t
cairo_region_union (cairo_region_t *dst, const cairo_region_t *other);

             cairo_status_t
cairo_region_union_rectangle (cairo_region_t *dst,
         const cairo_rectangle_int_t *rectangle);

             cairo_status_t
cairo_region_xor (cairo_region_t *dst, const cairo_region_t *other);

             cairo_status_t
cairo_region_xor_rectangle (cairo_region_t *dst,
       const cairo_rectangle_int_t *rectangle);


             void
cairo_debug_reset_static_data (void);
# 24 "gimprc-deserialize.c" 2
# 1 "/usr/include/glib-2.0/glib-object.h" 1
# 23 "/usr/include/glib-2.0/glib-object.h"
# 1 "/usr/include/glib-2.0/gobject/gbinding.h" 1
# 28 "/usr/include/glib-2.0/gobject/gbinding.h"
# 1 "/usr/include/glib-2.0/glib.h" 1
# 30 "/usr/include/glib-2.0/glib.h"
# 1 "/usr/include/glib-2.0/glib/galloca.h" 1
# 32 "/usr/include/glib-2.0/glib/galloca.h"
# 1 "/usr/include/glib-2.0/glib/gtypes.h" 1
# 32 "/usr/include/glib-2.0/glib/gtypes.h"
# 1 "/usr/lib64/glib-2.0/include/glibconfig.h" 1








# 1 "/usr/include/glib-2.0/glib/gmacros.h" 1
# 38 "/usr/include/glib-2.0/glib/gmacros.h"
# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 1 3
# 51 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 3
typedef long int ptrdiff_t;
# 62 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 3
typedef long unsigned int size_t;
# 90 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 3
typedef int wchar_t;
# 118 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 3
# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/__stddef_max_align_t.h" 1 3
# 35 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/__stddef_max_align_t.h" 3
typedef struct {
  long long __clang_max_align_nonce1
      __attribute__((__aligned__(__alignof__(long long))));
  long double __clang_max_align_nonce2
      __attribute__((__aligned__(__alignof__(long double))));
} max_align_t;
# 119 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 2 3
# 39 "/usr/include/glib-2.0/glib/gmacros.h" 2
# 10 "/usr/lib64/glib-2.0/include/glibconfig.h" 2

# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/limits.h" 1 3
# 37 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/limits.h" 3
# 1 "/usr/include/limits.h" 1 3 4
# 26 "/usr/include/limits.h" 3 4
# 1 "/usr/include/features.h" 1 3 4
# 345 "/usr/include/features.h" 3 4
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 346 "/usr/include/features.h" 2 3 4
# 375 "/usr/include/features.h" 3 4
# 1 "/usr/include/sys/cdefs.h" 1 3 4
# 392 "/usr/include/sys/cdefs.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 393 "/usr/include/sys/cdefs.h" 2 3 4
# 376 "/usr/include/features.h" 2 3 4
# 399 "/usr/include/features.h" 3 4
# 1 "/usr/include/gnu/stubs.h" 1 3 4
# 10 "/usr/include/gnu/stubs.h" 3 4
# 1 "/usr/include/gnu/stubs-64.h" 1 3 4
# 11 "/usr/include/gnu/stubs.h" 2 3 4
# 400 "/usr/include/features.h" 2 3 4
# 27 "/usr/include/limits.h" 2 3 4
# 144 "/usr/include/limits.h" 3 4
# 1 "/usr/include/bits/posix1_lim.h" 1 3 4
# 160 "/usr/include/bits/posix1_lim.h" 3 4
# 1 "/usr/include/bits/local_lim.h" 1 3 4
# 38 "/usr/include/bits/local_lim.h" 3 4
# 1 "/usr/include/linux/limits.h" 1 3 4
# 39 "/usr/include/bits/local_lim.h" 2 3 4
# 161 "/usr/include/bits/posix1_lim.h" 2 3 4
# 145 "/usr/include/limits.h" 2 3 4



# 1 "/usr/include/bits/posix2_lim.h" 1 3 4
# 149 "/usr/include/limits.h" 2 3 4
# 38 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/limits.h" 2 3
# 12 "/usr/lib64/glib-2.0/include/glibconfig.h" 2
# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/float.h" 1 3
# 13 "/usr/lib64/glib-2.0/include/glibconfig.h" 2
# 37 "/usr/lib64/glib-2.0/include/glibconfig.h"
typedef signed char gint8;
typedef unsigned char guint8;
typedef signed short gint16;
typedef unsigned short guint16;



typedef signed int gint32;
typedef unsigned int guint32;





typedef signed long gint64;
typedef unsigned long guint64;
# 65 "/usr/lib64/glib-2.0/include/glibconfig.h"
typedef signed long gssize;
typedef unsigned long gsize;
# 76 "/usr/lib64/glib-2.0/include/glibconfig.h"
typedef gint64 goffset;
# 91 "/usr/lib64/glib-2.0/include/glibconfig.h"
typedef signed long gintptr;
typedef unsigned long guintptr;
# 193 "/usr/lib64/glib-2.0/include/glibconfig.h"
typedef int GPid;
# 33 "/usr/include/glib-2.0/glib/gtypes.h" 2

# 1 "/usr/include/glib-2.0/glib/gversionmacros.h" 1
# 35 "/usr/include/glib-2.0/glib/gtypes.h" 2
# 1 "/usr/include/time.h" 1 3 4
# 37 "/usr/include/time.h" 3 4
# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 1 3 4
# 38 "/usr/include/time.h" 2 3 4



# 1 "/usr/include/bits/time.h" 1 3 4
# 42 "/usr/include/time.h" 2 3 4
# 55 "/usr/include/time.h" 3 4
# 1 "/usr/include/bits/types.h" 1 3 4
# 27 "/usr/include/bits/types.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 28 "/usr/include/bits/types.h" 2 3 4


typedef unsigned char __u_char;
typedef unsigned short int __u_short;
typedef unsigned int __u_int;
typedef unsigned long int __u_long;


typedef signed char __int8_t;
typedef unsigned char __uint8_t;
typedef signed short int __int16_t;
typedef unsigned short int __uint16_t;
typedef signed int __int32_t;
typedef unsigned int __uint32_t;

typedef signed long int __int64_t;
typedef unsigned long int __uint64_t;







typedef long int __quad_t;
typedef unsigned long int __u_quad_t;
# 130 "/usr/include/bits/types.h" 3 4
# 1 "/usr/include/bits/typesizes.h" 1 3 4
# 131 "/usr/include/bits/types.h" 2 3 4


typedef unsigned long int __dev_t;
typedef unsigned int __uid_t;
typedef unsigned int __gid_t;
typedef unsigned long int __ino_t;
typedef unsigned long int __ino64_t;
typedef unsigned int __mode_t;
typedef unsigned long int __nlink_t;
typedef long int __off_t;
typedef long int __off64_t;
typedef int __pid_t;
typedef struct { int __val[2]; } __fsid_t;
typedef long int __clock_t;
typedef unsigned long int __rlim_t;
typedef unsigned long int __rlim64_t;
typedef unsigned int __id_t;
typedef long int __time_t;
typedef unsigned int __useconds_t;
typedef long int __suseconds_t;

typedef int __daddr_t;
typedef int __key_t;


typedef int __clockid_t;


typedef void * __timer_t;


typedef long int __blksize_t;




typedef long int __blkcnt_t;
typedef long int __blkcnt64_t;


typedef unsigned long int __fsblkcnt_t;
typedef unsigned long int __fsblkcnt64_t;


typedef unsigned long int __fsfilcnt_t;
typedef unsigned long int __fsfilcnt64_t;


typedef long int __fsword_t;

typedef long int __ssize_t;


typedef long int __syscall_slong_t;

typedef unsigned long int __syscall_ulong_t;



typedef __off64_t __loff_t;
typedef __quad_t *__qaddr_t;
typedef char *__caddr_t;


typedef long int __intptr_t;


typedef unsigned int __socklen_t;
# 56 "/usr/include/time.h" 2 3 4



typedef __clock_t clock_t;
# 75 "/usr/include/time.h" 3 4
typedef __time_t time_t;
# 91 "/usr/include/time.h" 3 4
typedef __clockid_t clockid_t;
# 103 "/usr/include/time.h" 3 4
typedef __timer_t timer_t;
# 120 "/usr/include/time.h" 3 4
struct timespec
  {
    __time_t tv_sec;
    __syscall_slong_t tv_nsec;
  };
# 133 "/usr/include/time.h" 3 4
struct tm
{
  int tm_sec;
  int tm_min;
  int tm_hour;
  int tm_mday;
  int tm_mon;
  int tm_year;
  int tm_wday;
  int tm_yday;
  int tm_isdst;


  long int tm_gmtoff;
  const char *tm_zone;




};
# 161 "/usr/include/time.h" 3 4
struct itimerspec
  {
    struct timespec it_interval;
    struct timespec it_value;
  };


struct sigevent;





typedef __pid_t pid_t;
# 189 "/usr/include/time.h" 3 4
extern clock_t clock (void) __attribute__ ((__nothrow__ ));


extern time_t time (time_t *__timer) __attribute__ ((__nothrow__ ));


extern double difftime (time_t __time1, time_t __time0)
     __attribute__ ((__nothrow__ )) __attribute__ ((__const__));


extern time_t mktime (struct tm *__tp) __attribute__ ((__nothrow__ ));





extern size_t strftime (char *__restrict __s, size_t __maxsize,
   const char *__restrict __format,
   const struct tm *__restrict __tp) __attribute__ ((__nothrow__ ));
# 221 "/usr/include/time.h" 3 4
# 1 "/usr/include/xlocale.h" 1 3 4
# 27 "/usr/include/xlocale.h" 3 4
typedef struct __locale_struct
{

  struct __locale_data *__locales[13];


  const unsigned short int *__ctype_b;
  const int *__ctype_tolower;
  const int *__ctype_toupper;


  const char *__names[13];
} *__locale_t;


typedef __locale_t locale_t;
# 222 "/usr/include/time.h" 2 3 4

extern size_t strftime_l (char *__restrict __s, size_t __maxsize,
     const char *__restrict __format,
     const struct tm *__restrict __tp,
     __locale_t __loc) __attribute__ ((__nothrow__ ));
# 239 "/usr/include/time.h" 3 4
extern struct tm *gmtime (const time_t *__timer) __attribute__ ((__nothrow__ ));



extern struct tm *localtime (const time_t *__timer) __attribute__ ((__nothrow__ ));





extern struct tm *gmtime_r (const time_t *__restrict __timer,
       struct tm *__restrict __tp) __attribute__ ((__nothrow__ ));



extern struct tm *localtime_r (const time_t *__restrict __timer,
          struct tm *__restrict __tp) __attribute__ ((__nothrow__ ));





extern char *asctime (const struct tm *__tp) __attribute__ ((__nothrow__ ));


extern char *ctime (const time_t *__timer) __attribute__ ((__nothrow__ ));







extern char *asctime_r (const struct tm *__restrict __tp,
   char *__restrict __buf) __attribute__ ((__nothrow__ ));


extern char *ctime_r (const time_t *__restrict __timer,
        char *__restrict __buf) __attribute__ ((__nothrow__ ));




extern char *__tzname[2];
extern int __daylight;
extern long int __timezone;




extern char *tzname[2];



extern void tzset (void) __attribute__ ((__nothrow__ ));



extern int daylight;
extern long int timezone;





extern int stime (const time_t *__when) __attribute__ ((__nothrow__ ));
# 319 "/usr/include/time.h" 3 4
extern time_t timegm (struct tm *__tp) __attribute__ ((__nothrow__ ));


extern time_t timelocal (struct tm *__tp) __attribute__ ((__nothrow__ ));


extern int dysize (int __year) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
# 334 "/usr/include/time.h" 3 4
extern int nanosleep (const struct timespec *__requested_time,
        struct timespec *__remaining);



extern int clock_getres (clockid_t __clock_id, struct timespec *__res) __attribute__ ((__nothrow__ ));


extern int clock_gettime (clockid_t __clock_id, struct timespec *__tp) __attribute__ ((__nothrow__ ));


extern int clock_settime (clockid_t __clock_id, const struct timespec *__tp)
     __attribute__ ((__nothrow__ ));






extern int clock_nanosleep (clockid_t __clock_id, int __flags,
       const struct timespec *__req,
       struct timespec *__rem);


extern int clock_getcpuclockid (pid_t __pid, clockid_t *__clock_id) __attribute__ ((__nothrow__ ));




extern int timer_create (clockid_t __clock_id,
    struct sigevent *__restrict __evp,
    timer_t *__restrict __timerid) __attribute__ ((__nothrow__ ));


extern int timer_delete (timer_t __timerid) __attribute__ ((__nothrow__ ));


extern int timer_settime (timer_t __timerid, int __flags,
     const struct itimerspec *__restrict __value,
     struct itimerspec *__restrict __ovalue) __attribute__ ((__nothrow__ ));


extern int timer_gettime (timer_t __timerid, struct itimerspec *__value)
     __attribute__ ((__nothrow__ ));


extern int timer_getoverrun (timer_t __timerid) __attribute__ ((__nothrow__ ));





extern int timespec_get (struct timespec *__ts, int __base)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
# 36 "/usr/include/glib-2.0/glib/gtypes.h" 2
# 46 "/usr/include/glib-2.0/glib/gtypes.h"
typedef char gchar;
typedef short gshort;
typedef long glong;
typedef int gint;
typedef gint gboolean;

typedef unsigned char guchar;
typedef unsigned short gushort;
typedef unsigned long gulong;
typedef unsigned int guint;

typedef float gfloat;
typedef double gdouble;
# 77 "/usr/include/glib-2.0/glib/gtypes.h"
typedef void* gpointer;
typedef const void *gconstpointer;

typedef gint (*GCompareFunc) (gconstpointer a,
                                                 gconstpointer b);
typedef gint (*GCompareDataFunc) (gconstpointer a,
                                                 gconstpointer b,
       gpointer user_data);
typedef gboolean (*GEqualFunc) (gconstpointer a,
                                                 gconstpointer b);
typedef void (*GDestroyNotify) (gpointer data);
typedef void (*GFunc) (gpointer data,
                                                 gpointer user_data);
typedef guint (*GHashFunc) (gconstpointer key);
typedef void (*GHFunc) (gpointer key,
                                                 gpointer value,
                                                 gpointer user_data);
# 103 "/usr/include/glib-2.0/glib/gtypes.h"
typedef void (*GFreeFunc) (gpointer data);
# 117 "/usr/include/glib-2.0/glib/gtypes.h"
typedef const gchar * (*GTranslateFunc) (const gchar *str,
       gpointer data);
# 399 "/usr/include/glib-2.0/glib/gtypes.h"
typedef union _GDoubleIEEE754 GDoubleIEEE754;
typedef union _GFloatIEEE754 GFloatIEEE754;





union _GFloatIEEE754
{
  gfloat v_float;
  struct {
    guint mantissa : 23;
    guint biased_exponent : 8;
    guint sign : 1;
  } mpn;
};
union _GDoubleIEEE754
{
  gdouble v_double;
  struct {
    guint mantissa_low : 32;
    guint mantissa_high : 20;
    guint biased_exponent : 11;
    guint sign : 1;
  } mpn;
};
# 449 "/usr/include/glib-2.0/glib/gtypes.h"
typedef struct _GTimeVal GTimeVal;

struct _GTimeVal
{
  glong tv_sec;
  glong tv_usec;
};
# 33 "/usr/include/glib-2.0/glib/galloca.h" 2
# 31 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/garray.h" 1
# 36 "/usr/include/glib-2.0/glib/garray.h"
typedef struct _GBytes GBytes;
typedef struct _GArray GArray;
typedef struct _GByteArray GByteArray;
typedef struct _GPtrArray GPtrArray;

struct _GArray
{
  gchar *data;
  guint len;
};

struct _GByteArray
{
  guint8 *data;
  guint len;
};

struct _GPtrArray
{
  gpointer *pdata;
  guint len;
};
# 69 "/usr/include/glib-2.0/glib/garray.h"
extern
GArray* g_array_new (gboolean zero_terminated,
       gboolean clear_,
       guint element_size);
extern
GArray* g_array_sized_new (gboolean zero_terminated,
       gboolean clear_,
       guint element_size,
       guint reserved_size);
extern
gchar* g_array_free (GArray *array,
       gboolean free_segment);
extern
GArray *g_array_ref (GArray *array);
extern
void g_array_unref (GArray *array);
extern
guint g_array_get_element_size (GArray *array);
extern
GArray* g_array_append_vals (GArray *array,
       gconstpointer data,
       guint len);
extern
GArray* g_array_prepend_vals (GArray *array,
       gconstpointer data,
       guint len);
extern
GArray* g_array_insert_vals (GArray *array,
       guint index_,
       gconstpointer data,
       guint len);
extern
GArray* g_array_set_size (GArray *array,
       guint length);
extern
GArray* g_array_remove_index (GArray *array,
       guint index_);
extern
GArray* g_array_remove_index_fast (GArray *array,
       guint index_);
extern
GArray* g_array_remove_range (GArray *array,
       guint index_,
       guint length);
extern
void g_array_sort (GArray *array,
       GCompareFunc compare_func);
extern
void g_array_sort_with_data (GArray *array,
       GCompareDataFunc compare_func,
       gpointer user_data);
extern
void g_array_set_clear_func (GArray *array,
                                   GDestroyNotify clear_func);






extern
GPtrArray* g_ptr_array_new (void);
extern
GPtrArray* g_ptr_array_new_with_free_func (GDestroyNotify element_free_func);
extern
GPtrArray* g_ptr_array_sized_new (guint reserved_size);
extern
GPtrArray* g_ptr_array_new_full (guint reserved_size,
        GDestroyNotify element_free_func);
extern
gpointer* g_ptr_array_free (GPtrArray *array,
        gboolean free_seg);
extern
GPtrArray* g_ptr_array_ref (GPtrArray *array);
extern
void g_ptr_array_unref (GPtrArray *array);
extern
void g_ptr_array_set_free_func (GPtrArray *array,
                                           GDestroyNotify element_free_func);
extern
void g_ptr_array_set_size (GPtrArray *array,
        gint length);
extern
gpointer g_ptr_array_remove_index (GPtrArray *array,
        guint index_);
extern
gpointer g_ptr_array_remove_index_fast (GPtrArray *array,
        guint index_);
extern
gboolean g_ptr_array_remove (GPtrArray *array,
        gpointer data);
extern
gboolean g_ptr_array_remove_fast (GPtrArray *array,
        gpointer data);
extern
GPtrArray *g_ptr_array_remove_range (GPtrArray *array,
        guint index_,
        guint length);
extern
void g_ptr_array_add (GPtrArray *array,
        gpointer data);
extern
void g_ptr_array_insert (GPtrArray *array,
                                           gint index_,
                                           gpointer data);
extern
void g_ptr_array_sort (GPtrArray *array,
        GCompareFunc compare_func);
extern
void g_ptr_array_sort_with_data (GPtrArray *array,
        GCompareDataFunc compare_func,
        gpointer user_data);
extern
void g_ptr_array_foreach (GPtrArray *array,
        GFunc func,
        gpointer user_data);






extern
GByteArray* g_byte_array_new (void);
extern
GByteArray* g_byte_array_new_take (guint8 *data,
                                            gsize len);
extern
GByteArray* g_byte_array_sized_new (guint reserved_size);
extern
guint8* g_byte_array_free (GByteArray *array,
         gboolean free_segment);
extern
GBytes* g_byte_array_free_to_bytes (GByteArray *array);
extern
GByteArray *g_byte_array_ref (GByteArray *array);
extern
void g_byte_array_unref (GByteArray *array);
extern
GByteArray* g_byte_array_append (GByteArray *array,
         const guint8 *data,
         guint len);
extern
GByteArray* g_byte_array_prepend (GByteArray *array,
         const guint8 *data,
         guint len);
extern
GByteArray* g_byte_array_set_size (GByteArray *array,
         guint length);
extern
GByteArray* g_byte_array_remove_index (GByteArray *array,
         guint index_);
extern
GByteArray* g_byte_array_remove_index_fast (GByteArray *array,
         guint index_);
extern
GByteArray* g_byte_array_remove_range (GByteArray *array,
         guint index_,
         guint length);
extern
void g_byte_array_sort (GByteArray *array,
         GCompareFunc compare_func);
extern
void g_byte_array_sort_with_data (GByteArray *array,
         GCompareDataFunc compare_func,
         gpointer user_data);
# 32 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/gasyncqueue.h" 1
# 32 "/usr/include/glib-2.0/glib/gasyncqueue.h"
# 1 "/usr/include/glib-2.0/glib/gthread.h" 1
# 32 "/usr/include/glib-2.0/glib/gthread.h"
# 1 "/usr/include/glib-2.0/glib/gatomic.h" 1
# 31 "/usr/include/glib-2.0/glib/gatomic.h"
extern
gint g_atomic_int_get (const volatile gint *atomic);
extern
void g_atomic_int_set (volatile gint *atomic,
                                                               gint newval);
extern
void g_atomic_int_inc (volatile gint *atomic);
extern
gboolean g_atomic_int_dec_and_test (volatile gint *atomic);
extern
gboolean g_atomic_int_compare_and_exchange (volatile gint *atomic,
                                                               gint oldval,
                                                               gint newval);
extern
gint g_atomic_int_add (volatile gint *atomic,
                                                               gint val);
extern
guint g_atomic_int_and (volatile guint *atomic,
                                                               guint val);
extern
guint g_atomic_int_or (volatile guint *atomic,
                                                               guint val);
extern
guint g_atomic_int_xor (volatile guint *atomic,
                                                               guint val);

extern
gpointer g_atomic_pointer_get (const volatile void *atomic);
extern
void g_atomic_pointer_set (volatile void *atomic,
                                                               gpointer newval);
extern
gboolean g_atomic_pointer_compare_and_exchange (volatile void *atomic,
                                                               gpointer oldval,
                                                               gpointer newval);
extern
gssize g_atomic_pointer_add (volatile void *atomic,
                                                               gssize val);
extern
gsize g_atomic_pointer_and (volatile void *atomic,
                                                               gsize val);
extern
gsize g_atomic_pointer_or (volatile void *atomic,
                                                               gsize val);
extern
gsize g_atomic_pointer_xor (volatile void *atomic,
                                                               gsize val);

__attribute__((__deprecated__)) extern
gint g_atomic_int_exchange_and_add (volatile gint *atomic,
                                                               gint val);
# 33 "/usr/include/glib-2.0/glib/gthread.h" 2
# 1 "/usr/include/glib-2.0/glib/gerror.h" 1
# 27 "/usr/include/glib-2.0/glib/gerror.h"
# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stdarg.h" 1 3
# 30 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stdarg.h" 3
typedef __builtin_va_list va_list;
# 50 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stdarg.h" 3
typedef __builtin_va_list __gnuc_va_list;
# 28 "/usr/include/glib-2.0/glib/gerror.h" 2

# 1 "/usr/include/glib-2.0/glib/gquark.h" 1
# 36 "/usr/include/glib-2.0/glib/gquark.h"
typedef guint32 GQuark;



extern
GQuark g_quark_try_string (const gchar *string);
extern
GQuark g_quark_from_static_string (const gchar *string);
extern
GQuark g_quark_from_string (const gchar *string);
extern
const gchar * g_quark_to_string (GQuark quark) __attribute__((__const__));
# 61 "/usr/include/glib-2.0/glib/gquark.h"
extern
const gchar * g_intern_string (const gchar *string);
extern
const gchar * g_intern_static_string (const gchar *string);
# 30 "/usr/include/glib-2.0/glib/gerror.h" 2
# 42 "/usr/include/glib-2.0/glib/gerror.h"
typedef struct _GError GError;

struct _GError
{
  GQuark domain;
  gint code;
  gchar *message;
};

extern
GError* g_error_new (GQuark domain,
                                gint code,
                                const gchar *format,
                                ...) __attribute__((__format__ (__printf__, 3, 4)));

extern
GError* g_error_new_literal (GQuark domain,
                                gint code,
                                const gchar *message);
extern
GError* g_error_new_valist (GQuark domain,
                                gint code,
                                const gchar *format,
                                va_list args) __attribute__((__format__ (__printf__, 3, 0)));

extern
void g_error_free (GError *error);
extern
GError* g_error_copy (const GError *error);

extern
gboolean g_error_matches (const GError *error,
                                GQuark domain,
                                gint code);




extern
void g_set_error (GError **err,
                                GQuark domain,
                                gint code,
                                const gchar *format,
                                ...) __attribute__((__format__ (__printf__, 4, 5)));

extern
void g_set_error_literal (GError **err,
                                GQuark domain,
                                gint code,
                                const gchar *message);



extern
void g_propagate_error (GError **dest,
    GError *src);


extern
void g_clear_error (GError **err);


extern
void g_prefix_error (GError **err,
                                       const gchar *format,
                                       ...) __attribute__((__format__ (__printf__, 2, 3)));


extern
void g_propagate_prefixed_error (GError **dest,
                                       GError *src,
                                       const gchar *format,
                                       ...) __attribute__((__format__ (__printf__, 3, 4)));
# 34 "/usr/include/glib-2.0/glib/gthread.h" 2




extern
GQuark g_thread_error_quark (void);

typedef enum
{
  G_THREAD_ERROR_AGAIN
} GThreadError;

typedef gpointer (*GThreadFunc) (gpointer data);

typedef struct _GThread GThread;

typedef union _GMutex GMutex;
typedef struct _GRecMutex GRecMutex;
typedef struct _GRWLock GRWLock;
typedef struct _GCond GCond;
typedef struct _GPrivate GPrivate;
typedef struct _GOnce GOnce;

union _GMutex
{

  gpointer p;
  guint i[2];
};

struct _GRWLock
{

  gpointer p;
  guint i[2];
};

struct _GCond
{

  gpointer p;
  guint i[2];
};

struct _GRecMutex
{

  gpointer p;
  guint i[2];
};


struct _GPrivate
{

  gpointer p;
  GDestroyNotify notify;
  gpointer future[2];
};

typedef enum
{
  G_ONCE_STATUS_NOTCALLED,
  G_ONCE_STATUS_PROGRESS,
  G_ONCE_STATUS_READY
} GOnceStatus;


struct _GOnce
{
  volatile GOnceStatus status;
  volatile gpointer retval;
};
# 139 "/usr/include/glib-2.0/glib/gthread.h"
extern
GThread * g_thread_ref (GThread *thread);
extern
void g_thread_unref (GThread *thread);
extern
GThread * g_thread_new (const gchar *name,
                                                 GThreadFunc func,
                                                 gpointer data);
extern
GThread * g_thread_try_new (const gchar *name,
                                                 GThreadFunc func,
                                                 gpointer data,
                                                 GError **error);
extern
GThread * g_thread_self (void);
extern
void g_thread_exit (gpointer retval);
extern
gpointer g_thread_join (GThread *thread);
extern
void g_thread_yield (void);


extern
void g_mutex_init (GMutex *mutex);
extern
void g_mutex_clear (GMutex *mutex);
extern
void g_mutex_lock (GMutex *mutex);
extern
gboolean g_mutex_trylock (GMutex *mutex);
extern
void g_mutex_unlock (GMutex *mutex);

extern
void g_rw_lock_init (GRWLock *rw_lock);
extern
void g_rw_lock_clear (GRWLock *rw_lock);
extern
void g_rw_lock_writer_lock (GRWLock *rw_lock);
extern
gboolean g_rw_lock_writer_trylock (GRWLock *rw_lock);
extern
void g_rw_lock_writer_unlock (GRWLock *rw_lock);
extern
void g_rw_lock_reader_lock (GRWLock *rw_lock);
extern
gboolean g_rw_lock_reader_trylock (GRWLock *rw_lock);
extern
void g_rw_lock_reader_unlock (GRWLock *rw_lock);

extern
void g_rec_mutex_init (GRecMutex *rec_mutex);
extern
void g_rec_mutex_clear (GRecMutex *rec_mutex);
extern
void g_rec_mutex_lock (GRecMutex *rec_mutex);
extern
gboolean g_rec_mutex_trylock (GRecMutex *rec_mutex);
extern
void g_rec_mutex_unlock (GRecMutex *rec_mutex);

extern
void g_cond_init (GCond *cond);
extern
void g_cond_clear (GCond *cond);
extern
void g_cond_wait (GCond *cond,
                                                 GMutex *mutex);
extern
void g_cond_signal (GCond *cond);
extern
void g_cond_broadcast (GCond *cond);
extern
gboolean g_cond_wait_until (GCond *cond,
                                                 GMutex *mutex,
                                                 gint64 end_time);

extern
gpointer g_private_get (GPrivate *key);
extern
void g_private_set (GPrivate *key,
                                                 gpointer value);
extern
void g_private_replace (GPrivate *key,
                                                 gpointer value);

extern
gpointer g_once_impl (GOnce *once,
                                                 GThreadFunc func,
                                                 gpointer arg);
extern
gboolean g_once_init_enter (volatile void *location);
extern
void g_once_init_leave (volatile void *location,
                                                 gsize result);
# 266 "/usr/include/glib-2.0/glib/gthread.h"
extern
guint g_get_num_processors (void);
# 33 "/usr/include/glib-2.0/glib/gasyncqueue.h" 2



typedef struct _GAsyncQueue GAsyncQueue;

extern
GAsyncQueue *g_async_queue_new (void);
extern
GAsyncQueue *g_async_queue_new_full (GDestroyNotify item_free_func);
extern
void g_async_queue_lock (GAsyncQueue *queue);
extern
void g_async_queue_unlock (GAsyncQueue *queue);
extern
GAsyncQueue *g_async_queue_ref (GAsyncQueue *queue);
extern
void g_async_queue_unref (GAsyncQueue *queue);

__attribute__((__deprecated__)) extern
void g_async_queue_ref_unlocked (GAsyncQueue *queue);

__attribute__((__deprecated__)) extern
void g_async_queue_unref_and_unlock (GAsyncQueue *queue);

extern
void g_async_queue_push (GAsyncQueue *queue,
                                                 gpointer data);
extern
void g_async_queue_push_unlocked (GAsyncQueue *queue,
                                                 gpointer data);
extern
void g_async_queue_push_sorted (GAsyncQueue *queue,
                                                 gpointer data,
                                                 GCompareDataFunc func,
                                                 gpointer user_data);
extern
void g_async_queue_push_sorted_unlocked (GAsyncQueue *queue,
                                                 gpointer data,
                                                 GCompareDataFunc func,
                                                 gpointer user_data);
extern
gpointer g_async_queue_pop (GAsyncQueue *queue);
extern
gpointer g_async_queue_pop_unlocked (GAsyncQueue *queue);
extern
gpointer g_async_queue_try_pop (GAsyncQueue *queue);
extern
gpointer g_async_queue_try_pop_unlocked (GAsyncQueue *queue);
extern
gpointer g_async_queue_timeout_pop (GAsyncQueue *queue,
                                                 guint64 timeout);
extern
gpointer g_async_queue_timeout_pop_unlocked (GAsyncQueue *queue,
                                                 guint64 timeout);
extern
gint g_async_queue_length (GAsyncQueue *queue);
extern
gint g_async_queue_length_unlocked (GAsyncQueue *queue);
extern
void g_async_queue_sort (GAsyncQueue *queue,
                                                 GCompareDataFunc func,
                                                 gpointer user_data);
extern
void g_async_queue_sort_unlocked (GAsyncQueue *queue,
                                                 GCompareDataFunc func,
                                                 gpointer user_data);

__attribute__((__deprecated__)) extern
gpointer g_async_queue_timed_pop (GAsyncQueue *queue,
                                                 GTimeVal *end_time);
__attribute__((__deprecated__)) extern
gpointer g_async_queue_timed_pop_unlocked (GAsyncQueue *queue,
                                                 GTimeVal *end_time);
# 33 "/usr/include/glib-2.0/glib.h" 2

# 1 "/usr/include/glib-2.0/glib/gbacktrace.h" 1
# 33 "/usr/include/glib-2.0/glib/gbacktrace.h"
# 1 "/usr/include/signal.h" 1 3 4
# 32 "/usr/include/signal.h" 3 4
# 1 "/usr/include/bits/sigset.h" 1 3 4
# 23 "/usr/include/bits/sigset.h" 3 4
typedef int __sig_atomic_t;




typedef struct
  {
    unsigned long int __val[(1024 / (8 * sizeof (unsigned long int)))];
  } __sigset_t;
# 103 "/usr/include/bits/sigset.h" 3 4
extern int __sigismember (const __sigset_t *, int);
extern int __sigaddset (__sigset_t *, int);
extern int __sigdelset (__sigset_t *, int);
# 33 "/usr/include/signal.h" 2 3 4







typedef __sig_atomic_t sig_atomic_t;
# 49 "/usr/include/signal.h" 3 4
typedef __sigset_t sigset_t;








# 1 "/usr/include/bits/signum.h" 1 3 4
# 58 "/usr/include/signal.h" 2 3 4
# 67 "/usr/include/signal.h" 3 4
typedef __uid_t uid_t;
# 80 "/usr/include/signal.h" 3 4
# 1 "/usr/include/bits/siginfo.h" 1 3 4
# 24 "/usr/include/bits/siginfo.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 25 "/usr/include/bits/siginfo.h" 2 3 4







typedef union sigval
  {
    int sival_int;
    void *sival_ptr;
  } sigval_t;
# 58 "/usr/include/bits/siginfo.h" 3 4
typedef __clock_t __sigchld_clock_t;



typedef struct
  {
    int si_signo;
    int si_errno;

    int si_code;

    union
      {
 int _pad[((128 / sizeof (int)) - 4)];


 struct
   {
     __pid_t si_pid;
     __uid_t si_uid;
   } _kill;


 struct
   {
     int si_tid;
     int si_overrun;
     sigval_t si_sigval;
   } _timer;


 struct
   {
     __pid_t si_pid;
     __uid_t si_uid;
     sigval_t si_sigval;
   } _rt;


 struct
   {
     __pid_t si_pid;
     __uid_t si_uid;
     int si_status;
     __sigchld_clock_t si_utime;
     __sigchld_clock_t si_stime;
   } _sigchld;


 struct
   {
     void *si_addr;
   } _sigfault;


 struct
   {
     long int si_band;
     int si_fd;
   } _sigpoll;


 struct
   {
     void *_call_addr;
     int _syscall;
     unsigned int _arch;
   } _sigsys;
      } _sifields;
  } siginfo_t ;
# 151 "/usr/include/bits/siginfo.h" 3 4
enum
{
  SI_ASYNCNL = -60,

  SI_TKILL = -6,

  SI_SIGIO,

  SI_ASYNCIO,

  SI_MESGQ,

  SI_TIMER,

  SI_QUEUE,

  SI_USER,

  SI_KERNEL = 0x80

};



enum
{
  ILL_ILLOPC = 1,

  ILL_ILLOPN,

  ILL_ILLADR,

  ILL_ILLTRP,

  ILL_PRVOPC,

  ILL_PRVREG,

  ILL_COPROC,

  ILL_BADSTK

};


enum
{
  FPE_INTDIV = 1,

  FPE_INTOVF,

  FPE_FLTDIV,

  FPE_FLTOVF,

  FPE_FLTUND,

  FPE_FLTRES,

  FPE_FLTINV,

  FPE_FLTSUB

};


enum
{
  SEGV_MAPERR = 1,

  SEGV_ACCERR

};


enum
{
  BUS_ADRALN = 1,

  BUS_ADRERR,

  BUS_OBJERR

};


enum
{
  TRAP_BRKPT = 1,

  TRAP_TRACE

};


enum
{
  CLD_EXITED = 1,

  CLD_KILLED,

  CLD_DUMPED,

  CLD_TRAPPED,

  CLD_STOPPED,

  CLD_CONTINUED

};


enum
{
  POLL_IN = 1,

  POLL_OUT,

  POLL_MSG,

  POLL_ERR,

  POLL_PRI,

  POLL_HUP

};
# 297 "/usr/include/bits/siginfo.h" 3 4
typedef union pthread_attr_t pthread_attr_t;



typedef struct sigevent
  {
    sigval_t sigev_value;
    int sigev_signo;
    int sigev_notify;

    union
      {
 int _pad[((64 / sizeof (int)) - 4)];



 __pid_t _tid;

 struct
   {
     void (*_function) (sigval_t);
     pthread_attr_t *_attribute;
   } _sigev_thread;
      } _sigev_un;
  } sigevent_t;






enum
{
  SIGEV_SIGNAL = 0,

  SIGEV_NONE,

  SIGEV_THREAD,


  SIGEV_THREAD_ID = 4

};
# 81 "/usr/include/signal.h" 2 3 4




typedef void (*__sighandler_t) (int);




extern __sighandler_t __sysv_signal (int __sig, __sighandler_t __handler)
     __attribute__ ((__nothrow__ ));
# 102 "/usr/include/signal.h" 3 4
extern __sighandler_t signal (int __sig, __sighandler_t __handler)
     __attribute__ ((__nothrow__ ));
# 127 "/usr/include/signal.h" 3 4
extern int kill (__pid_t __pid, int __sig) __attribute__ ((__nothrow__ ));






extern int killpg (__pid_t __pgrp, int __sig) __attribute__ ((__nothrow__ ));




extern int raise (int __sig) __attribute__ ((__nothrow__ ));




extern __sighandler_t ssignal (int __sig, __sighandler_t __handler)
     __attribute__ ((__nothrow__ ));
extern int gsignal (int __sig) __attribute__ ((__nothrow__ ));




extern void psignal (int __sig, const char *__s);




extern void psiginfo (const siginfo_t *__pinfo, const char *__s);
# 169 "/usr/include/signal.h" 3 4
extern int __sigpause (int __sig_or_mask, int __is_sig);
# 197 "/usr/include/signal.h" 3 4
extern int sigblock (int __mask) __attribute__ ((__nothrow__ )) __attribute__ ((__deprecated__));


extern int sigsetmask (int __mask) __attribute__ ((__nothrow__ )) __attribute__ ((__deprecated__));


extern int siggetmask (void) __attribute__ ((__nothrow__ )) __attribute__ ((__deprecated__));
# 217 "/usr/include/signal.h" 3 4
typedef __sighandler_t sig_t;





extern int sigemptyset (sigset_t *__set) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int sigfillset (sigset_t *__set) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int sigaddset (sigset_t *__set, int __signo) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int sigdelset (sigset_t *__set, int __signo) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int sigismember (const sigset_t *__set, int __signo)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
# 253 "/usr/include/signal.h" 3 4
# 1 "/usr/include/bits/sigaction.h" 1 3 4
# 24 "/usr/include/bits/sigaction.h" 3 4
struct sigaction
  {


    union
      {

 __sighandler_t sa_handler;

 void (*sa_sigaction) (int, siginfo_t *, void *);
      }
    __sigaction_handler;







    __sigset_t sa_mask;


    int sa_flags;


    void (*sa_restorer) (void);
  };
# 254 "/usr/include/signal.h" 2 3 4


extern int sigprocmask (int __how, const sigset_t *__restrict __set,
   sigset_t *__restrict __oset) __attribute__ ((__nothrow__ ));






extern int sigsuspend (const sigset_t *__set) __attribute__ ((__nonnull__ (1)));


extern int sigaction (int __sig, const struct sigaction *__restrict __act,
        struct sigaction *__restrict __oact) __attribute__ ((__nothrow__ ));


extern int sigpending (sigset_t *__set) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));






extern int sigwait (const sigset_t *__restrict __set, int *__restrict __sig)
     __attribute__ ((__nonnull__ (1, 2)));






extern int sigwaitinfo (const sigset_t *__restrict __set,
   siginfo_t *__restrict __info) __attribute__ ((__nonnull__ (1)));






extern int sigtimedwait (const sigset_t *__restrict __set,
    siginfo_t *__restrict __info,
    const struct timespec *__restrict __timeout)
     __attribute__ ((__nonnull__ (1)));



extern int sigqueue (__pid_t __pid, int __sig, const union sigval __val)
     __attribute__ ((__nothrow__ ));
# 311 "/usr/include/signal.h" 3 4
extern const char *const _sys_siglist[65];
extern const char *const sys_siglist[65];


struct sigvec
  {
    __sighandler_t sv_handler;
    int sv_mask;

    int sv_flags;

  };
# 335 "/usr/include/signal.h" 3 4
extern int sigvec (int __sig, const struct sigvec *__vec,
     struct sigvec *__ovec) __attribute__ ((__nothrow__ ));




# 1 "/usr/include/bits/sigcontext.h" 1 3 4
# 29 "/usr/include/bits/sigcontext.h" 3 4
struct _fpx_sw_bytes
{
  __uint32_t magic1;
  __uint32_t extended_size;
  __uint64_t xstate_bv;
  __uint32_t xstate_size;
  __uint32_t padding[7];
};

struct _fpreg
{
  unsigned short significand[4];
  unsigned short exponent;
};

struct _fpxreg
{
  unsigned short significand[4];
  unsigned short exponent;
  unsigned short padding[3];
};

struct _xmmreg
{
  __uint32_t element[4];
};
# 121 "/usr/include/bits/sigcontext.h" 3 4
struct _fpstate
{

  __uint16_t cwd;
  __uint16_t swd;
  __uint16_t ftw;
  __uint16_t fop;
  __uint64_t rip;
  __uint64_t rdp;
  __uint32_t mxcsr;
  __uint32_t mxcr_mask;
  struct _fpxreg _st[8];
  struct _xmmreg _xmm[16];
  __uint32_t padding[24];
};

struct sigcontext
{
  __uint64_t r8;
  __uint64_t r9;
  __uint64_t r10;
  __uint64_t r11;
  __uint64_t r12;
  __uint64_t r13;
  __uint64_t r14;
  __uint64_t r15;
  __uint64_t rdi;
  __uint64_t rsi;
  __uint64_t rbp;
  __uint64_t rbx;
  __uint64_t rdx;
  __uint64_t rax;
  __uint64_t rcx;
  __uint64_t rsp;
  __uint64_t rip;
  __uint64_t eflags;
  unsigned short cs;
  unsigned short gs;
  unsigned short fs;
  unsigned short __pad0;
  __uint64_t err;
  __uint64_t trapno;
  __uint64_t oldmask;
  __uint64_t cr2;
  __extension__ union
    {
      struct _fpstate * fpstate;
      __uint64_t __fpstate_word;
    };
  __uint64_t __reserved1 [8];
};



struct _xsave_hdr
{
  __uint64_t xstate_bv;
  __uint64_t reserved1[2];
  __uint64_t reserved2[5];
};

struct _ymmh_state
{
  __uint32_t ymmh_space[64];
};

struct _xstate
{
  struct _fpstate fpstate;
  struct _xsave_hdr xstate_hdr;
  struct _ymmh_state ymmh;
};
# 341 "/usr/include/signal.h" 2 3 4


extern int sigreturn (struct sigcontext *__scp) __attribute__ ((__nothrow__ ));







# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 1 3 4
# 351 "/usr/include/signal.h" 2 3 4




extern int siginterrupt (int __sig, int __interrupt) __attribute__ ((__nothrow__ ));


# 1 "/usr/include/bits/sigstack.h" 1 3 4
# 25 "/usr/include/bits/sigstack.h" 3 4
struct sigstack
  {
    void *ss_sp;
    int ss_onstack;
  };



enum
{
  SS_ONSTACK = 1,

  SS_DISABLE

};
# 49 "/usr/include/bits/sigstack.h" 3 4
typedef struct sigaltstack
  {
    void *ss_sp;
    int ss_flags;
    size_t ss_size;
  } stack_t;
# 358 "/usr/include/signal.h" 2 3 4


# 1 "/usr/include/sys/ucontext.h" 1 3 4
# 22 "/usr/include/sys/ucontext.h" 3 4
# 1 "/usr/include/signal.h" 1 3 4
# 23 "/usr/include/sys/ucontext.h" 2 3 4








__extension__ typedef long long int greg_t;





typedef greg_t gregset_t[23];
# 92 "/usr/include/sys/ucontext.h" 3 4
struct _libc_fpxreg
{
  unsigned short int significand[4];
  unsigned short int exponent;
  unsigned short int padding[3];
};

struct _libc_xmmreg
{
  __uint32_t element[4];
};

struct _libc_fpstate
{

  __uint16_t cwd;
  __uint16_t swd;
  __uint16_t ftw;
  __uint16_t fop;
  __uint64_t rip;
  __uint64_t rdp;
  __uint32_t mxcsr;
  __uint32_t mxcr_mask;
  struct _libc_fpxreg _st[8];
  struct _libc_xmmreg _xmm[16];
  __uint32_t padding[24];
};


typedef struct _libc_fpstate *fpregset_t;


typedef struct
  {
    gregset_t gregs;

    fpregset_t fpregs;
    __extension__ unsigned long long __reserved1 [8];
} mcontext_t;


typedef struct ucontext
  {
    unsigned long int uc_flags;
    struct ucontext *uc_link;
    stack_t uc_stack;
    mcontext_t uc_mcontext;
    __sigset_t uc_sigmask;
    struct _libc_fpstate __fpregs_mem;
  } ucontext_t;
# 361 "/usr/include/signal.h" 2 3 4





extern int sigstack (struct sigstack *__ss, struct sigstack *__oss)
     __attribute__ ((__nothrow__ )) __attribute__ ((__deprecated__));



extern int sigaltstack (const struct sigaltstack *__restrict __ss,
   struct sigaltstack *__restrict __oss) __attribute__ ((__nothrow__ ));
# 395 "/usr/include/signal.h" 3 4
# 1 "/usr/include/bits/pthreadtypes.h" 1 3 4
# 21 "/usr/include/bits/pthreadtypes.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 22 "/usr/include/bits/pthreadtypes.h" 2 3 4
# 60 "/usr/include/bits/pthreadtypes.h" 3 4
typedef unsigned long int pthread_t;


union pthread_attr_t
{
  char __size[56];
  long int __align;
};







typedef struct __pthread_internal_list
{
  struct __pthread_internal_list *__prev;
  struct __pthread_internal_list *__next;
} __pthread_list_t;
# 90 "/usr/include/bits/pthreadtypes.h" 3 4
typedef union
{
  struct __pthread_mutex_s
  {
    int __lock;
    unsigned int __count;
    int __owner;

    unsigned int __nusers;



    int __kind;

    int __spins;
    __pthread_list_t __list;
# 115 "/usr/include/bits/pthreadtypes.h" 3 4
  } __data;
  char __size[40];
  long int __align;
} pthread_mutex_t;

typedef union
{
  char __size[4];
  int __align;
} pthread_mutexattr_t;




typedef union
{
  struct
  {
    int __lock;
    unsigned int __futex;
    __extension__ unsigned long long int __total_seq;
    __extension__ unsigned long long int __wakeup_seq;
    __extension__ unsigned long long int __woken_seq;
    void *__mutex;
    unsigned int __nwaiters;
    unsigned int __broadcast_seq;
  } __data;
  char __size[48];
  __extension__ long long int __align;
} pthread_cond_t;

typedef union
{
  char __size[4];
  int __align;
} pthread_condattr_t;



typedef unsigned int pthread_key_t;



typedef int pthread_once_t;





typedef union
{

  struct
  {
    int __lock;
    unsigned int __nr_readers;
    unsigned int __readers_wakeup;
    unsigned int __writer_wakeup;
    unsigned int __nr_readers_queued;
    unsigned int __nr_writers_queued;
    int __writer;
    int __shared;
    unsigned long int __pad1;
    unsigned long int __pad2;


    unsigned int __flags;

  } __data;
# 202 "/usr/include/bits/pthreadtypes.h" 3 4
  char __size[56];
  long int __align;
} pthread_rwlock_t;

typedef union
{
  char __size[8];
  long int __align;
} pthread_rwlockattr_t;





typedef volatile int pthread_spinlock_t;




typedef union
{
  char __size[32];
  long int __align;
} pthread_barrier_t;

typedef union
{
  char __size[4];
  int __align;
} pthread_barrierattr_t;
# 396 "/usr/include/signal.h" 2 3 4
# 1 "/usr/include/bits/sigthread.h" 1 3 4
# 30 "/usr/include/bits/sigthread.h" 3 4
extern int pthread_sigmask (int __how,
       const __sigset_t *__restrict __newmask,
       __sigset_t *__restrict __oldmask)__attribute__ ((__nothrow__ ));


extern int pthread_kill (pthread_t __threadid, int __signo) __attribute__ ((__nothrow__ ));
# 397 "/usr/include/signal.h" 2 3 4






extern int __libc_current_sigrtmin (void) __attribute__ ((__nothrow__ ));

extern int __libc_current_sigrtmax (void) __attribute__ ((__nothrow__ ));
# 34 "/usr/include/glib-2.0/glib/gbacktrace.h" 2



extern
void g_on_error_query (const gchar *prg_name);
extern
void g_on_error_stack_trace (const gchar *prg_name);
# 35 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/gbase64.h" 1
# 30 "/usr/include/glib-2.0/glib/gbase64.h"
extern
gsize g_base64_encode_step (const guchar *in,
                                 gsize len,
                                 gboolean break_lines,
                                 gchar *out,
                                 gint *state,
                                 gint *save);
extern
gsize g_base64_encode_close (gboolean break_lines,
                                 gchar *out,
                                 gint *state,
                                 gint *save);
extern
gchar* g_base64_encode (const guchar *data,
                                 gsize len) __attribute__((__malloc__));
extern
gsize g_base64_decode_step (const gchar *in,
                                 gsize len,
                                 guchar *out,
                                 gint *state,
                                 guint *save);
extern
guchar *g_base64_decode (const gchar *text,
                                 gsize *out_len) __attribute__((__malloc__));
extern
guchar *g_base64_decode_inplace (gchar *text,
                                 gsize *out_len);
# 36 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/gbitlock.h" 1
# 32 "/usr/include/glib-2.0/glib/gbitlock.h"
extern
void g_bit_lock (volatile gint *address,
                                           gint lock_bit);
extern
gboolean g_bit_trylock (volatile gint *address,
                                           gint lock_bit);
extern
void g_bit_unlock (volatile gint *address,
                                           gint lock_bit);

extern
void g_pointer_bit_lock (volatile void *address,
                                           gint lock_bit);
extern
gboolean g_pointer_bit_trylock (volatile void *address,
                                           gint lock_bit);
extern
void g_pointer_bit_unlock (volatile void *address,
                                           gint lock_bit);
# 37 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/gbookmarkfile.h" 1
# 57 "/usr/include/glib-2.0/glib/gbookmarkfile.h"
typedef enum
{
  G_BOOKMARK_FILE_ERROR_INVALID_URI,
  G_BOOKMARK_FILE_ERROR_INVALID_VALUE,
  G_BOOKMARK_FILE_ERROR_APP_NOT_REGISTERED,
  G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND,
  G_BOOKMARK_FILE_ERROR_READ,
  G_BOOKMARK_FILE_ERROR_UNKNOWN_ENCODING,
  G_BOOKMARK_FILE_ERROR_WRITE,
  G_BOOKMARK_FILE_ERROR_FILE_NOT_FOUND
} GBookmarkFileError;

extern
GQuark g_bookmark_file_error_quark (void);







typedef struct _GBookmarkFile GBookmarkFile;

extern
GBookmarkFile *g_bookmark_file_new (void);
extern
void g_bookmark_file_free (GBookmarkFile *bookmark);

extern
gboolean g_bookmark_file_load_from_file (GBookmarkFile *bookmark,
          const gchar *filename,
          GError **error);
extern
gboolean g_bookmark_file_load_from_data (GBookmarkFile *bookmark,
          const gchar *data,
          gsize length,
          GError **error);
extern
gboolean g_bookmark_file_load_from_data_dirs (GBookmarkFile *bookmark,
          const gchar *file,
          gchar **full_path,
          GError **error);
extern
gchar * g_bookmark_file_to_data (GBookmarkFile *bookmark,
          gsize *length,
          GError **error) __attribute__((__malloc__));
extern
gboolean g_bookmark_file_to_file (GBookmarkFile *bookmark,
          const gchar *filename,
          GError **error);

extern
void g_bookmark_file_set_title (GBookmarkFile *bookmark,
          const gchar *uri,
          const gchar *title);
extern
gchar * g_bookmark_file_get_title (GBookmarkFile *bookmark,
          const gchar *uri,
          GError **error) __attribute__((__malloc__));
extern
void g_bookmark_file_set_description (GBookmarkFile *bookmark,
          const gchar *uri,
          const gchar *description);
extern
gchar * g_bookmark_file_get_description (GBookmarkFile *bookmark,
          const gchar *uri,
          GError **error) __attribute__((__malloc__));
extern
void g_bookmark_file_set_mime_type (GBookmarkFile *bookmark,
          const gchar *uri,
          const gchar *mime_type);
extern
gchar * g_bookmark_file_get_mime_type (GBookmarkFile *bookmark,
          const gchar *uri,
          GError **error) __attribute__((__malloc__));
extern
void g_bookmark_file_set_groups (GBookmarkFile *bookmark,
          const gchar *uri,
          const gchar **groups,
          gsize length);
extern
void g_bookmark_file_add_group (GBookmarkFile *bookmark,
          const gchar *uri,
          const gchar *group);
extern
gboolean g_bookmark_file_has_group (GBookmarkFile *bookmark,
          const gchar *uri,
          const gchar *group,
          GError **error);
extern
gchar ** g_bookmark_file_get_groups (GBookmarkFile *bookmark,
          const gchar *uri,
          gsize *length,
          GError **error) __attribute__((__malloc__));
extern
void g_bookmark_file_add_application (GBookmarkFile *bookmark,
          const gchar *uri,
          const gchar *name,
          const gchar *exec);
extern
gboolean g_bookmark_file_has_application (GBookmarkFile *bookmark,
          const gchar *uri,
          const gchar *name,
          GError **error);
extern
gchar ** g_bookmark_file_get_applications (GBookmarkFile *bookmark,
          const gchar *uri,
          gsize *length,
          GError **error) __attribute__((__malloc__));
extern
gboolean g_bookmark_file_set_app_info (GBookmarkFile *bookmark,
          const gchar *uri,
          const gchar *name,
          const gchar *exec,
          gint count,
          time_t stamp,
          GError **error);
extern
gboolean g_bookmark_file_get_app_info (GBookmarkFile *bookmark,
          const gchar *uri,
          const gchar *name,
          gchar **exec,
          guint *count,
          time_t *stamp,
          GError **error);
extern
void g_bookmark_file_set_is_private (GBookmarkFile *bookmark,
          const gchar *uri,
          gboolean is_private);
extern
gboolean g_bookmark_file_get_is_private (GBookmarkFile *bookmark,
          const gchar *uri,
          GError **error);
extern
void g_bookmark_file_set_icon (GBookmarkFile *bookmark,
          const gchar *uri,
          const gchar *href,
          const gchar *mime_type);
extern
gboolean g_bookmark_file_get_icon (GBookmarkFile *bookmark,
          const gchar *uri,
          gchar **href,
          gchar **mime_type,
          GError **error);
extern
void g_bookmark_file_set_added (GBookmarkFile *bookmark,
          const gchar *uri,
          time_t added);
extern
time_t g_bookmark_file_get_added (GBookmarkFile *bookmark,
          const gchar *uri,
          GError **error);
extern
void g_bookmark_file_set_modified (GBookmarkFile *bookmark,
          const gchar *uri,
          time_t modified);
extern
time_t g_bookmark_file_get_modified (GBookmarkFile *bookmark,
          const gchar *uri,
          GError **error);
extern
void g_bookmark_file_set_visited (GBookmarkFile *bookmark,
          const gchar *uri,
          time_t visited);
extern
time_t g_bookmark_file_get_visited (GBookmarkFile *bookmark,
          const gchar *uri,
          GError **error);
extern
gboolean g_bookmark_file_has_item (GBookmarkFile *bookmark,
          const gchar *uri);
extern
gint g_bookmark_file_get_size (GBookmarkFile *bookmark);
extern
gchar ** g_bookmark_file_get_uris (GBookmarkFile *bookmark,
          gsize *length) __attribute__((__malloc__));
extern
gboolean g_bookmark_file_remove_group (GBookmarkFile *bookmark,
          const gchar *uri,
          const gchar *group,
          GError **error);
extern
gboolean g_bookmark_file_remove_application (GBookmarkFile *bookmark,
          const gchar *uri,
          const gchar *name,
          GError **error);
extern
gboolean g_bookmark_file_remove_item (GBookmarkFile *bookmark,
          const gchar *uri,
          GError **error);
extern
gboolean g_bookmark_file_move_item (GBookmarkFile *bookmark,
          const gchar *old_uri,
          const gchar *new_uri,
          GError **error);
# 38 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/gbytes.h" 1
# 34 "/usr/include/glib-2.0/glib/gbytes.h"
extern
GBytes * g_bytes_new (gconstpointer data,
                                                 gsize size);

extern
GBytes * g_bytes_new_take (gpointer data,
                                                 gsize size);

extern
GBytes * g_bytes_new_static (gconstpointer data,
                                                 gsize size);

extern
GBytes * g_bytes_new_with_free_func (gconstpointer data,
                                                 gsize size,
                                                 GDestroyNotify free_func,
                                                 gpointer user_data);

extern
GBytes * g_bytes_new_from_bytes (GBytes *bytes,
                                                 gsize offset,
                                                 gsize length);

extern
gconstpointer g_bytes_get_data (GBytes *bytes,
                                                 gsize *size);

extern
gsize g_bytes_get_size (GBytes *bytes);

extern
GBytes * g_bytes_ref (GBytes *bytes);

extern
void g_bytes_unref (GBytes *bytes);

extern
gpointer g_bytes_unref_to_data (GBytes *bytes,
                                                 gsize *size);

extern
GByteArray * g_bytes_unref_to_array (GBytes *bytes);

extern
guint g_bytes_hash (gconstpointer bytes);

extern
gboolean g_bytes_equal (gconstpointer bytes1,
                                                 gconstpointer bytes2);

extern
gint g_bytes_compare (gconstpointer bytes1,
                                                 gconstpointer bytes2);
# 39 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/gcharset.h" 1
# 31 "/usr/include/glib-2.0/glib/gcharset.h"
extern
gboolean g_get_charset (const char **charset);
extern
gchar * g_get_codeset (void);

extern
const gchar * const * g_get_language_names (void);
extern
gchar ** g_get_locale_variants (const gchar *locale);
# 40 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/gchecksum.h" 1
# 46 "/usr/include/glib-2.0/glib/gchecksum.h"
typedef enum {
  G_CHECKSUM_MD5,
  G_CHECKSUM_SHA1,
  G_CHECKSUM_SHA256,
  G_CHECKSUM_SHA512
} GChecksumType;
# 62 "/usr/include/glib-2.0/glib/gchecksum.h"
typedef struct _GChecksum GChecksum;

extern
gssize g_checksum_type_get_length (GChecksumType checksum_type);

extern
GChecksum * g_checksum_new (GChecksumType checksum_type);
extern
void g_checksum_reset (GChecksum *checksum);
extern
GChecksum * g_checksum_copy (const GChecksum *checksum);
extern
void g_checksum_free (GChecksum *checksum);
extern
void g_checksum_update (GChecksum *checksum,
                                                     const guchar *data,
                                                     gssize length);
extern
const gchar * g_checksum_get_string (GChecksum *checksum);
extern
void g_checksum_get_digest (GChecksum *checksum,
                                                     guint8 *buffer,
                                                     gsize *digest_len);

extern
gchar *g_compute_checksum_for_data (GChecksumType checksum_type,
                                                     const guchar *data,
                                                     gsize length);
extern
gchar *g_compute_checksum_for_string (GChecksumType checksum_type,
                                                     const gchar *str,
                                                     gssize length);

extern
gchar *g_compute_checksum_for_bytes (GChecksumType checksum_type,
                                                     GBytes *data);
# 41 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/gconvert.h" 1
# 49 "/usr/include/glib-2.0/glib/gconvert.h"
typedef enum
{
  G_CONVERT_ERROR_NO_CONVERSION,
  G_CONVERT_ERROR_ILLEGAL_SEQUENCE,
  G_CONVERT_ERROR_FAILED,
  G_CONVERT_ERROR_PARTIAL_INPUT,
  G_CONVERT_ERROR_BAD_URI,
  G_CONVERT_ERROR_NOT_ABSOLUTE_PATH,
  G_CONVERT_ERROR_NO_MEMORY
} GConvertError;
# 68 "/usr/include/glib-2.0/glib/gconvert.h"
extern
GQuark g_convert_error_quark (void);







typedef struct _GIConv *GIConv;

extern
GIConv g_iconv_open (const gchar *to_codeset,
         const gchar *from_codeset);
extern
gsize g_iconv (GIConv converter,
         gchar **inbuf,
         gsize *inbytes_left,
         gchar **outbuf,
         gsize *outbytes_left);
extern
gint g_iconv_close (GIConv converter);


extern
gchar* g_convert (const gchar *str,
    gssize len,
    const gchar *to_codeset,
    const gchar *from_codeset,
    gsize *bytes_read,
    gsize *bytes_written,
    GError **error) __attribute__((__malloc__));
extern
gchar* g_convert_with_iconv (const gchar *str,
    gssize len,
    GIConv converter,
    gsize *bytes_read,
    gsize *bytes_written,
    GError **error) __attribute__((__malloc__));
extern
gchar* g_convert_with_fallback (const gchar *str,
    gssize len,
    const gchar *to_codeset,
    const gchar *from_codeset,
    const gchar *fallback,
    gsize *bytes_read,
    gsize *bytes_written,
    GError **error) __attribute__((__malloc__));




extern
gchar* g_locale_to_utf8 (const gchar *opsysstring,
      gssize len,
      gsize *bytes_read,
      gsize *bytes_written,
      GError **error) __attribute__((__malloc__));
extern
gchar* g_locale_from_utf8 (const gchar *utf8string,
      gssize len,
      gsize *bytes_read,
      gsize *bytes_written,
      GError **error) __attribute__((__malloc__));




extern
gchar* g_filename_to_utf8 (const gchar *opsysstring,
        gssize len,
        gsize *bytes_read,
        gsize *bytes_written,
        GError **error) __attribute__((__malloc__));
extern
gchar* g_filename_from_utf8 (const gchar *utf8string,
        gssize len,
        gsize *bytes_read,
        gsize *bytes_written,
        GError **error) __attribute__((__malloc__));

extern
gchar *g_filename_from_uri (const gchar *uri,
       gchar **hostname,
       GError **error) __attribute__((__malloc__));

extern
gchar *g_filename_to_uri (const gchar *filename,
       const gchar *hostname,
       GError **error) __attribute__((__malloc__));
extern
gchar *g_filename_display_name (const gchar *filename) __attribute__((__malloc__));
extern
gboolean g_get_filename_charsets (const gchar ***charsets);

extern
gchar *g_filename_display_basename (const gchar *filename) __attribute__((__malloc__));

extern
gchar **g_uri_list_extract_uris (const gchar *uri_list) __attribute__((__malloc__));
# 42 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/gdataset.h" 1
# 36 "/usr/include/glib-2.0/glib/gdataset.h"
typedef struct _GData GData;

typedef void (*GDataForeachFunc) (GQuark key_id,
                                                 gpointer data,
                                                 gpointer user_data);



extern
void g_datalist_init (GData **datalist);
extern
void g_datalist_clear (GData **datalist);
extern
gpointer g_datalist_id_get_data (GData **datalist,
      GQuark key_id);
extern
void g_datalist_id_set_data_full (GData **datalist,
      GQuark key_id,
      gpointer data,
      GDestroyNotify destroy_func);

typedef gpointer (*GDuplicateFunc) (gpointer data, gpointer user_data);

extern
gpointer g_datalist_id_dup_data (GData **datalist,
                                         GQuark key_id,
                                         GDuplicateFunc dup_func,
      gpointer user_data);
extern
gboolean g_datalist_id_replace_data (GData **datalist,
                                         GQuark key_id,
                                         gpointer oldval,
                                         gpointer newval,
                                         GDestroyNotify destroy,
      GDestroyNotify *old_destroy);

extern
gpointer g_datalist_id_remove_no_notify (GData **datalist,
      GQuark key_id);
extern
void g_datalist_foreach (GData **datalist,
      GDataForeachFunc func,
      gpointer user_data);
# 89 "/usr/include/glib-2.0/glib/gdataset.h"
extern
void g_datalist_set_flags (GData **datalist,
      guint flags);
extern
void g_datalist_unset_flags (GData **datalist,
      guint flags);
extern
guint g_datalist_get_flags (GData **datalist);
# 113 "/usr/include/glib-2.0/glib/gdataset.h"
extern
void g_dataset_destroy (gconstpointer dataset_location);
extern
gpointer g_dataset_id_get_data (gconstpointer dataset_location,
                                         GQuark key_id);
extern
gpointer g_datalist_get_data (GData **datalist,
       const gchar *key);
extern
void g_dataset_id_set_data_full (gconstpointer dataset_location,
                                         GQuark key_id,
                                         gpointer data,
                                         GDestroyNotify destroy_func);
extern
gpointer g_dataset_id_remove_no_notify (gconstpointer dataset_location,
                                         GQuark key_id);
extern
void g_dataset_foreach (gconstpointer dataset_location,
                                         GDataForeachFunc func,
                                         gpointer user_data);
# 43 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/gdate.h" 1
# 48 "/usr/include/glib-2.0/glib/gdate.h"
typedef gint32 GTime;
typedef guint16 GDateYear;
typedef guint8 GDateDay;
typedef struct _GDate GDate;


typedef enum
{
  G_DATE_DAY = 0,
  G_DATE_MONTH = 1,
  G_DATE_YEAR = 2
} GDateDMY;


typedef enum
{
  G_DATE_BAD_WEEKDAY = 0,
  G_DATE_MONDAY = 1,
  G_DATE_TUESDAY = 2,
  G_DATE_WEDNESDAY = 3,
  G_DATE_THURSDAY = 4,
  G_DATE_FRIDAY = 5,
  G_DATE_SATURDAY = 6,
  G_DATE_SUNDAY = 7
} GDateWeekday;
typedef enum
{
  G_DATE_BAD_MONTH = 0,
  G_DATE_JANUARY = 1,
  G_DATE_FEBRUARY = 2,
  G_DATE_MARCH = 3,
  G_DATE_APRIL = 4,
  G_DATE_MAY = 5,
  G_DATE_JUNE = 6,
  G_DATE_JULY = 7,
  G_DATE_AUGUST = 8,
  G_DATE_SEPTEMBER = 9,
  G_DATE_OCTOBER = 10,
  G_DATE_NOVEMBER = 11,
  G_DATE_DECEMBER = 12
} GDateMonth;
# 99 "/usr/include/glib-2.0/glib/gdate.h"
struct _GDate
{
  guint julian_days : 32;





  guint julian : 1;
  guint dmy : 1;


  guint day : 6;
  guint month : 4;
  guint year : 16;
};





extern
GDate* g_date_new (void);
extern
GDate* g_date_new_dmy (GDateDay day,
                                           GDateMonth month,
                                           GDateYear year);
extern
GDate* g_date_new_julian (guint32 julian_day);
extern
void g_date_free (GDate *date);






extern
gboolean g_date_valid (const GDate *date);
extern
gboolean g_date_valid_day (GDateDay day) __attribute__((__const__));
extern
gboolean g_date_valid_month (GDateMonth month) __attribute__((__const__));
extern
gboolean g_date_valid_year (GDateYear year) __attribute__((__const__));
extern
gboolean g_date_valid_weekday (GDateWeekday weekday) __attribute__((__const__));
extern
gboolean g_date_valid_julian (guint32 julian_date) __attribute__((__const__));
extern
gboolean g_date_valid_dmy (GDateDay day,
                                           GDateMonth month,
                                           GDateYear year) __attribute__((__const__));

extern
GDateWeekday g_date_get_weekday (const GDate *date);
extern
GDateMonth g_date_get_month (const GDate *date);
extern
GDateYear g_date_get_year (const GDate *date);
extern
GDateDay g_date_get_day (const GDate *date);
extern
guint32 g_date_get_julian (const GDate *date);
extern
guint g_date_get_day_of_year (const GDate *date);






extern
guint g_date_get_monday_week_of_year (const GDate *date);
extern
guint g_date_get_sunday_week_of_year (const GDate *date);
extern
guint g_date_get_iso8601_week_of_year (const GDate *date);





extern
void g_date_clear (GDate *date,
                                           guint n_dates);





extern
void g_date_set_parse (GDate *date,
                                           const gchar *str);
extern
void g_date_set_time_t (GDate *date,
        time_t timet);
extern
void g_date_set_time_val (GDate *date,
        GTimeVal *timeval);

__attribute__((__deprecated__)) extern
void g_date_set_time (GDate *date,
                                           GTime time_);

extern
void g_date_set_month (GDate *date,
                                           GDateMonth month);
extern
void g_date_set_day (GDate *date,
                                           GDateDay day);
extern
void g_date_set_year (GDate *date,
                                           GDateYear year);
extern
void g_date_set_dmy (GDate *date,
                                           GDateDay day,
                                           GDateMonth month,
                                           GDateYear y);
extern
void g_date_set_julian (GDate *date,
                                           guint32 julian_date);
extern
gboolean g_date_is_first_of_month (const GDate *date);
extern
gboolean g_date_is_last_of_month (const GDate *date);


extern
void g_date_add_days (GDate *date,
                                           guint n_days);
extern
void g_date_subtract_days (GDate *date,
                                           guint n_days);


extern
void g_date_add_months (GDate *date,
                                           guint n_months);
extern
void g_date_subtract_months (GDate *date,
                                           guint n_months);


extern
void g_date_add_years (GDate *date,
                                           guint n_years);
extern
void g_date_subtract_years (GDate *date,
                                           guint n_years);
extern
gboolean g_date_is_leap_year (GDateYear year) __attribute__((__const__));
extern
guint8 g_date_get_days_in_month (GDateMonth month,
                                           GDateYear year) __attribute__((__const__));
extern
guint8 g_date_get_monday_weeks_in_year (GDateYear year) __attribute__((__const__));
extern
guint8 g_date_get_sunday_weeks_in_year (GDateYear year) __attribute__((__const__));



extern
gint g_date_days_between (const GDate *date1,
        const GDate *date2);


extern
gint g_date_compare (const GDate *lhs,
                                           const GDate *rhs);
extern
void g_date_to_struct_tm (const GDate *date,
                                           struct tm *tm);

extern
void g_date_clamp (GDate *date,
        const GDate *min_date,
        const GDate *max_date);


extern
void g_date_order (GDate *date1, GDate *date2);




extern
gsize g_date_strftime (gchar *s,
                                           gsize slen,
                                           const gchar *format,
                                           const GDate *date);
# 44 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/gdatetime.h" 1
# 33 "/usr/include/glib-2.0/glib/gdatetime.h"
# 1 "/usr/include/glib-2.0/glib/gtimezone.h" 1
# 31 "/usr/include/glib-2.0/glib/gtimezone.h"
typedef struct _GTimeZone GTimeZone;
# 48 "/usr/include/glib-2.0/glib/gtimezone.h"
typedef enum
{
  G_TIME_TYPE_STANDARD,
  G_TIME_TYPE_DAYLIGHT,
  G_TIME_TYPE_UNIVERSAL
} GTimeType;

extern
GTimeZone * g_time_zone_new (const gchar *identifier);
extern
GTimeZone * g_time_zone_new_utc (void);
extern
GTimeZone * g_time_zone_new_local (void);

extern
GTimeZone * g_time_zone_ref (GTimeZone *tz);
extern
void g_time_zone_unref (GTimeZone *tz);

extern
gint g_time_zone_find_interval (GTimeZone *tz,
                                                                         GTimeType type,
                                                                         gint64 time_);

extern
gint g_time_zone_adjust_time (GTimeZone *tz,
                                                                         GTimeType type,
                                                                         gint64 *time_);

extern
const gchar * g_time_zone_get_abbreviation (GTimeZone *tz,
                                                                         gint interval);
extern
gint32 g_time_zone_get_offset (GTimeZone *tz,
                                                                         gint interval);
extern
gboolean g_time_zone_is_dst (GTimeZone *tz,
                                                                         gint interval);
# 34 "/usr/include/glib-2.0/glib/gdatetime.h" 2
# 89 "/usr/include/glib-2.0/glib/gdatetime.h"
typedef gint64 GTimeSpan;
# 99 "/usr/include/glib-2.0/glib/gdatetime.h"
typedef struct _GDateTime GDateTime;

extern
void g_date_time_unref (GDateTime *datetime);
extern
GDateTime * g_date_time_ref (GDateTime *datetime);

extern
GDateTime * g_date_time_new_now (GTimeZone *tz);
extern
GDateTime * g_date_time_new_now_local (void);
extern
GDateTime * g_date_time_new_now_utc (void);

extern
GDateTime * g_date_time_new_from_unix_local (gint64 t);
extern
GDateTime * g_date_time_new_from_unix_utc (gint64 t);

extern
GDateTime * g_date_time_new_from_timeval_local (const GTimeVal *tv);
extern
GDateTime * g_date_time_new_from_timeval_utc (const GTimeVal *tv);

extern
GDateTime * g_date_time_new (GTimeZone *tz,
                                                                         gint year,
                                                                         gint month,
                                                                         gint day,
                                                                         gint hour,
                                                                         gint minute,
                                                                         gdouble seconds);
extern
GDateTime * g_date_time_new_local (gint year,
                                                                         gint month,
                                                                         gint day,
                                                                         gint hour,
                                                                         gint minute,
                                                                         gdouble seconds);
extern
GDateTime * g_date_time_new_utc (gint year,
                                                                         gint month,
                                                                         gint day,
                                                                         gint hour,
                                                                         gint minute,
                                                                         gdouble seconds);

extern
__attribute__((warn_unused_result))
GDateTime * g_date_time_add (GDateTime *datetime,
                                                                         GTimeSpan timespan);

extern
__attribute__((warn_unused_result))
GDateTime * g_date_time_add_years (GDateTime *datetime,
                                                                         gint years);
extern
__attribute__((warn_unused_result))
GDateTime * g_date_time_add_months (GDateTime *datetime,
                                                                         gint months);
extern
__attribute__((warn_unused_result))
GDateTime * g_date_time_add_weeks (GDateTime *datetime,
                                                                         gint weeks);
extern
__attribute__((warn_unused_result))
GDateTime * g_date_time_add_days (GDateTime *datetime,
                                                                         gint days);

extern
__attribute__((warn_unused_result))
GDateTime * g_date_time_add_hours (GDateTime *datetime,
                                                                         gint hours);
extern
__attribute__((warn_unused_result))
GDateTime * g_date_time_add_minutes (GDateTime *datetime,
                                                                         gint minutes);
extern
__attribute__((warn_unused_result))
GDateTime * g_date_time_add_seconds (GDateTime *datetime,
                                                                         gdouble seconds);

extern
__attribute__((warn_unused_result))
GDateTime * g_date_time_add_full (GDateTime *datetime,
                                                                         gint years,
                                                                         gint months,
                                                                         gint days,
                                                                         gint hours,
                                                                         gint minutes,
                                                                         gdouble seconds);

extern
gint g_date_time_compare (gconstpointer dt1,
                                                                         gconstpointer dt2);
extern
GTimeSpan g_date_time_difference (GDateTime *end,
                                                                         GDateTime *begin);
extern
guint g_date_time_hash (gconstpointer datetime);
extern
gboolean g_date_time_equal (gconstpointer dt1,
                                                                         gconstpointer dt2);

extern
void g_date_time_get_ymd (GDateTime *datetime,
                                                                         gint *year,
                                                                         gint *month,
                                                                         gint *day);

extern
gint g_date_time_get_year (GDateTime *datetime);
extern
gint g_date_time_get_month (GDateTime *datetime);
extern
gint g_date_time_get_day_of_month (GDateTime *datetime);

extern
gint g_date_time_get_week_numbering_year (GDateTime *datetime);
extern
gint g_date_time_get_week_of_year (GDateTime *datetime);
extern
gint g_date_time_get_day_of_week (GDateTime *datetime);

extern
gint g_date_time_get_day_of_year (GDateTime *datetime);

extern
gint g_date_time_get_hour (GDateTime *datetime);
extern
gint g_date_time_get_minute (GDateTime *datetime);
extern
gint g_date_time_get_second (GDateTime *datetime);
extern
gint g_date_time_get_microsecond (GDateTime *datetime);
extern
gdouble g_date_time_get_seconds (GDateTime *datetime);

extern
gint64 g_date_time_to_unix (GDateTime *datetime);
extern
gboolean g_date_time_to_timeval (GDateTime *datetime,
                                                                         GTimeVal *tv);

extern
GTimeSpan g_date_time_get_utc_offset (GDateTime *datetime);
extern
const gchar * g_date_time_get_timezone_abbreviation (GDateTime *datetime);
extern
gboolean g_date_time_is_daylight_savings (GDateTime *datetime);

extern
GDateTime * g_date_time_to_timezone (GDateTime *datetime,
                                                                         GTimeZone *tz);
extern
GDateTime * g_date_time_to_local (GDateTime *datetime);
extern
GDateTime * g_date_time_to_utc (GDateTime *datetime);

extern
gchar * g_date_time_format (GDateTime *datetime,
                                                                         const gchar *format) __attribute__((__malloc__));
# 45 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/gdir.h" 1
# 32 "/usr/include/glib-2.0/glib/gdir.h"
# 1 "/usr/include/dirent.h" 1 3 4
# 62 "/usr/include/dirent.h" 3 4
# 1 "/usr/include/bits/dirent.h" 1 3 4
# 22 "/usr/include/bits/dirent.h" 3 4
struct dirent
  {

    __ino_t d_ino;
    __off_t d_off;




    unsigned short int d_reclen;
    unsigned char d_type;
    char d_name[256];
  };
# 63 "/usr/include/dirent.h" 2 3 4
# 98 "/usr/include/dirent.h" 3 4
enum
  {
    DT_UNKNOWN = 0,

    DT_FIFO = 1,

    DT_CHR = 2,

    DT_DIR = 4,

    DT_BLK = 6,

    DT_REG = 8,

    DT_LNK = 10,

    DT_SOCK = 12,

    DT_WHT = 14

  };
# 128 "/usr/include/dirent.h" 3 4
typedef struct __dirstream DIR;






extern DIR *opendir (const char *__name) __attribute__ ((__nonnull__ (1)));






extern DIR *fdopendir (int __fd);







extern int closedir (DIR *__dirp) __attribute__ ((__nonnull__ (1)));
# 163 "/usr/include/dirent.h" 3 4
extern struct dirent *readdir (DIR *__dirp) __attribute__ ((__nonnull__ (1)));
# 184 "/usr/include/dirent.h" 3 4
extern int readdir_r (DIR *__restrict __dirp,
        struct dirent *__restrict __entry,
        struct dirent **__restrict __result)
     __attribute__ ((__nonnull__ (1, 2, 3)));
# 209 "/usr/include/dirent.h" 3 4
extern void rewinddir (DIR *__dirp) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));





extern void seekdir (DIR *__dirp, long int __pos) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern long int telldir (DIR *__dirp) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));





extern int dirfd (DIR *__dirp) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
# 245 "/usr/include/dirent.h" 3 4
# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 1 3 4
# 246 "/usr/include/dirent.h" 2 3 4
# 255 "/usr/include/dirent.h" 3 4
extern int scandir (const char *__restrict __dir,
      struct dirent ***__restrict __namelist,
      int (*__selector) (const struct dirent *),
      int (*__cmp) (const struct dirent **,
      const struct dirent **))
     __attribute__ ((__nonnull__ (1, 2)));
# 325 "/usr/include/dirent.h" 3 4
extern int alphasort (const struct dirent **__e1,
        const struct dirent **__e2)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
# 353 "/usr/include/dirent.h" 3 4
extern __ssize_t getdirentries (int __fd, char *__restrict __buf,
    size_t __nbytes,
    __off_t *__restrict __basep)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2, 4)));
# 33 "/usr/include/glib-2.0/glib/gdir.h" 2




typedef struct _GDir GDir;

extern
GDir * g_dir_open (const gchar *path,
            guint flags,
            GError **error);
extern
const gchar * g_dir_read_name (GDir *dir);
extern
void g_dir_rewind (GDir *dir);
extern
void g_dir_close (GDir *dir);
# 46 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/genviron.h" 1
# 36 "/usr/include/glib-2.0/glib/genviron.h"
extern
const gchar * g_getenv (const gchar *variable);
extern
gboolean g_setenv (const gchar *variable,
                                  const gchar *value,
                                  gboolean overwrite);
extern
void g_unsetenv (const gchar *variable);
extern
gchar ** g_listenv (void);

extern
gchar ** g_get_environ (void);
extern
const gchar * g_environ_getenv (gchar **envp,
                                  const gchar *variable);
extern
gchar ** g_environ_setenv (gchar **envp,
                                  const gchar *variable,
                                  const gchar *value,
                                  gboolean overwrite) __attribute__((warn_unused_result));
extern
gchar ** g_environ_unsetenv (gchar **envp,
                                  const gchar *variable) __attribute__((warn_unused_result));
# 47 "/usr/include/glib-2.0/glib.h" 2

# 1 "/usr/include/glib-2.0/glib/gfileutils.h" 1
# 33 "/usr/include/glib-2.0/glib/gfileutils.h"
typedef enum
{
  G_FILE_ERROR_EXIST,
  G_FILE_ERROR_ISDIR,
  G_FILE_ERROR_ACCES,
  G_FILE_ERROR_NAMETOOLONG,
  G_FILE_ERROR_NOENT,
  G_FILE_ERROR_NOTDIR,
  G_FILE_ERROR_NXIO,
  G_FILE_ERROR_NODEV,
  G_FILE_ERROR_ROFS,
  G_FILE_ERROR_TXTBSY,
  G_FILE_ERROR_FAULT,
  G_FILE_ERROR_LOOP,
  G_FILE_ERROR_NOSPC,
  G_FILE_ERROR_NOMEM,
  G_FILE_ERROR_MFILE,
  G_FILE_ERROR_NFILE,
  G_FILE_ERROR_BADF,
  G_FILE_ERROR_INVAL,
  G_FILE_ERROR_PIPE,
  G_FILE_ERROR_AGAIN,
  G_FILE_ERROR_INTR,
  G_FILE_ERROR_IO,
  G_FILE_ERROR_PERM,
  G_FILE_ERROR_NOSYS,
  G_FILE_ERROR_FAILED
} GFileError;





typedef enum
{
  G_FILE_TEST_IS_REGULAR = 1 << 0,
  G_FILE_TEST_IS_SYMLINK = 1 << 1,
  G_FILE_TEST_IS_DIR = 1 << 2,
  G_FILE_TEST_IS_EXECUTABLE = 1 << 3,
  G_FILE_TEST_EXISTS = 1 << 4
} GFileTest;

extern
GQuark g_file_error_quark (void);

extern
GFileError g_file_error_from_errno (gint err_no);

extern
gboolean g_file_test (const gchar *filename,
                              GFileTest test);
extern
gboolean g_file_get_contents (const gchar *filename,
                              gchar **contents,
                              gsize *length,
                              GError **error);
extern
gboolean g_file_set_contents (const gchar *filename,
                              const gchar *contents,
                              gssize length,
                              GError **error);
extern
gchar *g_file_read_link (const gchar *filename,
                              GError **error);


extern
gchar *g_mkdtemp (gchar *tmpl);
extern
gchar *g_mkdtemp_full (gchar *tmpl,
                               gint mode);


extern
gint g_mkstemp (gchar *tmpl);
extern
gint g_mkstemp_full (gchar *tmpl,
                               gint flags,
                               gint mode);


extern
gint g_file_open_tmp (const gchar *tmpl,
                               gchar **name_used,
                               GError **error);
extern
gchar *g_dir_make_tmp (const gchar *tmpl,
                               GError **error);

extern
gchar *g_build_path (const gchar *separator,
                               const gchar *first_element,
                               ...) __attribute__((__malloc__)) __attribute__((__sentinel__));
extern
gchar *g_build_pathv (const gchar *separator,
                               gchar **args) __attribute__((__malloc__));

extern
gchar *g_build_filename (const gchar *first_element,
                               ...) __attribute__((__malloc__)) __attribute__((__sentinel__));
extern
gchar *g_build_filenamev (gchar **args) __attribute__((__malloc__));

extern
gint g_mkdir_with_parents (const gchar *pathname,
                               gint mode);
# 162 "/usr/include/glib-2.0/glib/gfileutils.h"
extern
gboolean g_path_is_absolute (const gchar *file_name);
extern
const gchar *g_path_skip_root (const gchar *file_name);

__attribute__((__deprecated__)) extern
const gchar *g_basename (const gchar *file_name);




extern
gchar *g_get_current_dir (void);
extern
gchar *g_path_get_basename (const gchar *file_name) __attribute__((__malloc__));
extern
gchar *g_path_get_dirname (const gchar *file_name) __attribute__((__malloc__));
# 49 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/ggettext.h" 1
# 36 "/usr/include/glib-2.0/glib/ggettext.h"
extern
const gchar *g_strip_context (const gchar *msgid,
                              const gchar *msgval) __attribute__((__format_arg__ (1)));

extern
const gchar *g_dgettext (const gchar *domain,
                              const gchar *msgid) __attribute__((__format_arg__ (2)));
extern
const gchar *g_dcgettext (const gchar *domain,
                              const gchar *msgid,
                              gint category) __attribute__((__format_arg__ (2)));
extern
const gchar *g_dngettext (const gchar *domain,
                              const gchar *msgid,
                              const gchar *msgid_plural,
                              gulong n) __attribute__((__format_arg__ (3)));
extern
const gchar *g_dpgettext (const gchar *domain,
                              const gchar *msgctxtid,
                              gsize msgidoffset) __attribute__((__format_arg__ (2)));
extern
const gchar *g_dpgettext2 (const gchar *domain,
                              const gchar *context,
                              const gchar *msgid) __attribute__((__format_arg__ (3)));
# 50 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/ghash.h" 1
# 33 "/usr/include/glib-2.0/glib/ghash.h"
# 1 "/usr/include/glib-2.0/glib/glist.h" 1
# 32 "/usr/include/glib-2.0/glib/glist.h"
# 1 "/usr/include/glib-2.0/glib/gmem.h" 1
# 49 "/usr/include/glib-2.0/glib/gmem.h"
typedef struct _GMemVTable GMemVTable;
# 68 "/usr/include/glib-2.0/glib/gmem.h"
extern
void g_free (gpointer mem);

extern
void g_clear_pointer (gpointer *pp,
                           GDestroyNotify destroy);

extern
gpointer g_malloc (gsize n_bytes) __attribute__((__malloc__)) ;
extern
gpointer g_malloc0 (gsize n_bytes) __attribute__((__malloc__)) ;
extern
gpointer g_realloc (gpointer mem,
      gsize n_bytes) __attribute__((warn_unused_result));
extern
gpointer g_try_malloc (gsize n_bytes) __attribute__((__malloc__)) ;
extern
gpointer g_try_malloc0 (gsize n_bytes) __attribute__((__malloc__)) ;
extern
gpointer g_try_realloc (gpointer mem,
      gsize n_bytes) __attribute__((warn_unused_result));

extern
gpointer g_malloc_n (gsize n_blocks,
      gsize n_block_bytes) __attribute__((__malloc__)) ;
extern
gpointer g_malloc0_n (gsize n_blocks,
      gsize n_block_bytes) __attribute__((__malloc__)) ;
extern
gpointer g_realloc_n (gpointer mem,
      gsize n_blocks,
      gsize n_block_bytes) __attribute__((warn_unused_result));
extern
gpointer g_try_malloc_n (gsize n_blocks,
      gsize n_block_bytes) __attribute__((__malloc__)) ;
extern
gpointer g_try_malloc0_n (gsize n_blocks,
      gsize n_block_bytes) __attribute__((__malloc__)) ;
extern
gpointer g_try_realloc_n (gpointer mem,
      gsize n_blocks,
      gsize n_block_bytes) __attribute__((warn_unused_result));
# 271 "/usr/include/glib-2.0/glib/gmem.h"
struct _GMemVTable {
  gpointer (*malloc) (gsize n_bytes);
  gpointer (*realloc) (gpointer mem,
      gsize n_bytes);
  void (*free) (gpointer mem);

  gpointer (*calloc) (gsize n_blocks,
      gsize n_block_bytes);
  gpointer (*try_malloc) (gsize n_bytes);
  gpointer (*try_realloc) (gpointer mem,
      gsize n_bytes);
};
extern
void g_mem_set_vtable (GMemVTable *vtable);
extern
gboolean g_mem_is_system_malloc (void);

extern gboolean g_mem_gc_friendly;



extern GMemVTable *glib_mem_profiler_table;
extern
void g_mem_profile (void);
# 33 "/usr/include/glib-2.0/glib/glist.h" 2
# 1 "/usr/include/glib-2.0/glib/gnode.h" 1
# 36 "/usr/include/glib-2.0/glib/gnode.h"
typedef struct _GNode GNode;


typedef enum
{
  G_TRAVERSE_LEAVES = 1 << 0,
  G_TRAVERSE_NON_LEAVES = 1 << 1,
  G_TRAVERSE_ALL = G_TRAVERSE_LEAVES | G_TRAVERSE_NON_LEAVES,
  G_TRAVERSE_MASK = 0x03,
  G_TRAVERSE_LEAFS = G_TRAVERSE_LEAVES,
  G_TRAVERSE_NON_LEAFS = G_TRAVERSE_NON_LEAVES
} GTraverseFlags;


typedef enum
{
  G_IN_ORDER,
  G_PRE_ORDER,
  G_POST_ORDER,
  G_LEVEL_ORDER
} GTraverseType;

typedef gboolean (*GNodeTraverseFunc) (GNode *node,
       gpointer data);
typedef void (*GNodeForeachFunc) (GNode *node,
       gpointer data);
# 75 "/usr/include/glib-2.0/glib/gnode.h"
typedef gpointer (*GCopyFunc) (gconstpointer src,
                                                 gpointer data);



struct _GNode
{
  gpointer data;
  GNode *next;
  GNode *prev;
  GNode *parent;
  GNode *children;
};
# 113 "/usr/include/glib-2.0/glib/gnode.h"
extern
GNode* g_node_new (gpointer data);
extern
void g_node_destroy (GNode *root);
extern
void g_node_unlink (GNode *node);
extern
GNode* g_node_copy_deep (GNode *node,
     GCopyFunc copy_func,
     gpointer data);
extern
GNode* g_node_copy (GNode *node);
extern
GNode* g_node_insert (GNode *parent,
     gint position,
     GNode *node);
extern
GNode* g_node_insert_before (GNode *parent,
     GNode *sibling,
     GNode *node);
extern
GNode* g_node_insert_after (GNode *parent,
     GNode *sibling,
     GNode *node);
extern
GNode* g_node_prepend (GNode *parent,
     GNode *node);
extern
guint g_node_n_nodes (GNode *root,
     GTraverseFlags flags);
extern
GNode* g_node_get_root (GNode *node);
extern
gboolean g_node_is_ancestor (GNode *node,
     GNode *descendant);
extern
guint g_node_depth (GNode *node);
extern
GNode* g_node_find (GNode *root,
     GTraverseType order,
     GTraverseFlags flags,
     gpointer data);
# 238 "/usr/include/glib-2.0/glib/gnode.h"
extern
void g_node_traverse (GNode *root,
     GTraverseType order,
     GTraverseFlags flags,
     gint max_depth,
     GNodeTraverseFunc func,
     gpointer data);






extern
guint g_node_max_height (GNode *root);

extern
void g_node_children_foreach (GNode *node,
      GTraverseFlags flags,
      GNodeForeachFunc func,
      gpointer data);
extern
void g_node_reverse_children (GNode *node);
extern
guint g_node_n_children (GNode *node);
extern
GNode* g_node_nth_child (GNode *node,
      guint n);
extern
GNode* g_node_last_child (GNode *node);
extern
GNode* g_node_find_child (GNode *node,
      GTraverseFlags flags,
      gpointer data);
extern
gint g_node_child_position (GNode *node,
      GNode *child);
extern
gint g_node_child_index (GNode *node,
      gpointer data);

extern
GNode* g_node_first_sibling (GNode *node);
extern
GNode* g_node_last_sibling (GNode *node);
# 34 "/usr/include/glib-2.0/glib/glist.h" 2



typedef struct _GList GList;

struct _GList
{
  gpointer data;
  GList *next;
  GList *prev;
};



extern
GList* g_list_alloc (void) __attribute__((warn_unused_result));
extern
void g_list_free (GList *list);
extern
void g_list_free_1 (GList *list);

extern
void g_list_free_full (GList *list,
      GDestroyNotify free_func);
extern
GList* g_list_append (GList *list,
      gpointer data) __attribute__((warn_unused_result));
extern
GList* g_list_prepend (GList *list,
      gpointer data) __attribute__((warn_unused_result));
extern
GList* g_list_insert (GList *list,
      gpointer data,
      gint position) __attribute__((warn_unused_result));
extern
GList* g_list_insert_sorted (GList *list,
      gpointer data,
      GCompareFunc func) __attribute__((warn_unused_result));
extern
GList* g_list_insert_sorted_with_data (GList *list,
      gpointer data,
      GCompareDataFunc func,
      gpointer user_data) __attribute__((warn_unused_result));
extern
GList* g_list_insert_before (GList *list,
      GList *sibling,
      gpointer data) __attribute__((warn_unused_result));
extern
GList* g_list_concat (GList *list1,
      GList *list2) __attribute__((warn_unused_result));
extern
GList* g_list_remove (GList *list,
      gconstpointer data) __attribute__((warn_unused_result));
extern
GList* g_list_remove_all (GList *list,
      gconstpointer data) __attribute__((warn_unused_result));
extern
GList* g_list_remove_link (GList *list,
      GList *llink) __attribute__((warn_unused_result));
extern
GList* g_list_delete_link (GList *list,
      GList *link_) __attribute__((warn_unused_result));
extern
GList* g_list_reverse (GList *list) __attribute__((warn_unused_result));
extern
GList* g_list_copy (GList *list) __attribute__((warn_unused_result));

extern
GList* g_list_copy_deep (GList *list,
      GCopyFunc func,
      gpointer user_data) __attribute__((warn_unused_result));

extern
GList* g_list_nth (GList *list,
      guint n);
extern
GList* g_list_nth_prev (GList *list,
      guint n);
extern
GList* g_list_find (GList *list,
      gconstpointer data);
extern
GList* g_list_find_custom (GList *list,
      gconstpointer data,
      GCompareFunc func);
extern
gint g_list_position (GList *list,
      GList *llink);
extern
gint g_list_index (GList *list,
      gconstpointer data);
extern
GList* g_list_last (GList *list);
extern
GList* g_list_first (GList *list);
extern
guint g_list_length (GList *list);
extern
void g_list_foreach (GList *list,
      GFunc func,
      gpointer user_data);
extern
GList* g_list_sort (GList *list,
      GCompareFunc compare_func) __attribute__((warn_unused_result));
extern
GList* g_list_sort_with_data (GList *list,
      GCompareDataFunc compare_func,
      gpointer user_data) __attribute__((warn_unused_result));
extern
gpointer g_list_nth_data (GList *list,
      guint n);
# 34 "/usr/include/glib-2.0/glib/ghash.h" 2



typedef struct _GHashTable GHashTable;

typedef gboolean (*GHRFunc) (gpointer key,
                               gpointer value,
                               gpointer user_data);

typedef struct _GHashTableIter GHashTableIter;

struct _GHashTableIter
{

  gpointer dummy1;
  gpointer dummy2;
  gpointer dummy3;
  int dummy4;
  gboolean dummy5;
  gpointer dummy6;
};

extern
GHashTable* g_hash_table_new (GHashFunc hash_func,
                                            GEqualFunc key_equal_func);
extern
GHashTable* g_hash_table_new_full (GHashFunc hash_func,
                                            GEqualFunc key_equal_func,
                                            GDestroyNotify key_destroy_func,
                                            GDestroyNotify value_destroy_func);
extern
void g_hash_table_destroy (GHashTable *hash_table);
extern
gboolean g_hash_table_insert (GHashTable *hash_table,
                                            gpointer key,
                                            gpointer value);
extern
gboolean g_hash_table_replace (GHashTable *hash_table,
                                            gpointer key,
                                            gpointer value);
extern
gboolean g_hash_table_add (GHashTable *hash_table,
                                            gpointer key);
extern
gboolean g_hash_table_remove (GHashTable *hash_table,
                                            gconstpointer key);
extern
void g_hash_table_remove_all (GHashTable *hash_table);
extern
gboolean g_hash_table_steal (GHashTable *hash_table,
                                            gconstpointer key);
extern
void g_hash_table_steal_all (GHashTable *hash_table);
extern
gpointer g_hash_table_lookup (GHashTable *hash_table,
                                            gconstpointer key);
extern
gboolean g_hash_table_contains (GHashTable *hash_table,
                                            gconstpointer key);
extern
gboolean g_hash_table_lookup_extended (GHashTable *hash_table,
                                            gconstpointer lookup_key,
                                            gpointer *orig_key,
                                            gpointer *value);
extern
void g_hash_table_foreach (GHashTable *hash_table,
                                            GHFunc func,
                                            gpointer user_data);
extern
gpointer g_hash_table_find (GHashTable *hash_table,
                                            GHRFunc predicate,
                                            gpointer user_data);
extern
guint g_hash_table_foreach_remove (GHashTable *hash_table,
                                            GHRFunc func,
                                            gpointer user_data);
extern
guint g_hash_table_foreach_steal (GHashTable *hash_table,
                                            GHRFunc func,
                                            gpointer user_data);
extern
guint g_hash_table_size (GHashTable *hash_table);
extern
GList * g_hash_table_get_keys (GHashTable *hash_table);
extern
GList * g_hash_table_get_values (GHashTable *hash_table);
extern
gpointer * g_hash_table_get_keys_as_array (GHashTable *hash_table,
                                            guint *length);

extern
void g_hash_table_iter_init (GHashTableIter *iter,
                                            GHashTable *hash_table);
extern
gboolean g_hash_table_iter_next (GHashTableIter *iter,
                                            gpointer *key,
                                            gpointer *value);
extern
GHashTable* g_hash_table_iter_get_hash_table (GHashTableIter *iter);
extern
void g_hash_table_iter_remove (GHashTableIter *iter);
extern
void g_hash_table_iter_replace (GHashTableIter *iter,
                                            gpointer value);
extern
void g_hash_table_iter_steal (GHashTableIter *iter);

extern
GHashTable* g_hash_table_ref (GHashTable *hash_table);
extern
void g_hash_table_unref (GHashTable *hash_table);
# 153 "/usr/include/glib-2.0/glib/ghash.h"
extern
gboolean g_str_equal (gconstpointer v1,
                         gconstpointer v2);
extern
guint g_str_hash (gconstpointer v);

extern
gboolean g_int_equal (gconstpointer v1,
                         gconstpointer v2);
extern
guint g_int_hash (gconstpointer v);

extern
gboolean g_int64_equal (gconstpointer v1,
                         gconstpointer v2);
extern
guint g_int64_hash (gconstpointer v);

extern
gboolean g_double_equal (gconstpointer v1,
                         gconstpointer v2);
extern
guint g_double_hash (gconstpointer v);

extern
guint g_direct_hash (gconstpointer v) __attribute__((__const__));
extern
gboolean g_direct_equal (gconstpointer v1,
                         gconstpointer v2) __attribute__((__const__));
# 51 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/ghmac.h" 1
# 40 "/usr/include/glib-2.0/glib/ghmac.h"
typedef struct _GHmac GHmac;

extern
GHmac * g_hmac_new (GChecksumType digest_type,
                                                     const guchar *key,
                                                     gsize key_len);
extern
GHmac * g_hmac_copy (const GHmac *hmac);
extern
GHmac * g_hmac_ref (GHmac *hmac);
extern
void g_hmac_unref (GHmac *hmac);
extern
void g_hmac_update (GHmac *hmac,
                                                     const guchar *data,
                                                     gssize length);
extern
const gchar * g_hmac_get_string (GHmac *hmac);
extern
void g_hmac_get_digest (GHmac *hmac,
                                                     guint8 *buffer,
                                                     gsize *digest_len);

extern
gchar *g_compute_hmac_for_data (GChecksumType digest_type,
                                                     const guchar *key,
                                                     gsize key_len,
                                                     const guchar *data,
                                                     gsize length);
extern
gchar *g_compute_hmac_for_string (GChecksumType digest_type,
                                                     const guchar *key,
                                                     gsize key_len,
                                                     const gchar *str,
                                                     gssize length);
# 52 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/ghook.h" 1
# 38 "/usr/include/glib-2.0/glib/ghook.h"
typedef struct _GHook GHook;
typedef struct _GHookList GHookList;

typedef gint (*GHookCompareFunc) (GHook *new_hook,
       GHook *sibling);
typedef gboolean (*GHookFindFunc) (GHook *hook,
       gpointer data);
typedef void (*GHookMarshaller) (GHook *hook,
       gpointer marshal_data);
typedef gboolean (*GHookCheckMarshaller) (GHook *hook,
       gpointer marshal_data);
typedef void (*GHookFunc) (gpointer data);
typedef gboolean (*GHookCheckFunc) (gpointer data);
typedef void (*GHookFinalizeFunc) (GHookList *hook_list,
       GHook *hook);
typedef enum
{
  G_HOOK_FLAG_ACTIVE = 1 << 0,
  G_HOOK_FLAG_IN_CALL = 1 << 1,
  G_HOOK_FLAG_MASK = 0x0f
} GHookFlagMask;




struct _GHookList
{
  gulong seq_id;
  guint hook_size : 16;
  guint is_setup : 1;
  GHook *hooks;
  gpointer dummy3;
  GHookFinalizeFunc finalize_hook;
  gpointer dummy[2];
};
struct _GHook
{
  gpointer data;
  GHook *next;
  GHook *prev;
  guint ref_count;
  gulong hook_id;
  guint flags;
  gpointer func;
  GDestroyNotify destroy;
};
# 104 "/usr/include/glib-2.0/glib/ghook.h"
extern
void g_hook_list_init (GHookList *hook_list,
      guint hook_size);
extern
void g_hook_list_clear (GHookList *hook_list);
extern
GHook* g_hook_alloc (GHookList *hook_list);
extern
void g_hook_free (GHookList *hook_list,
      GHook *hook);
extern
GHook * g_hook_ref (GHookList *hook_list,
      GHook *hook);
extern
void g_hook_unref (GHookList *hook_list,
      GHook *hook);
extern
gboolean g_hook_destroy (GHookList *hook_list,
      gulong hook_id);
extern
void g_hook_destroy_link (GHookList *hook_list,
      GHook *hook);
extern
void g_hook_prepend (GHookList *hook_list,
      GHook *hook);
extern
void g_hook_insert_before (GHookList *hook_list,
      GHook *sibling,
      GHook *hook);
extern
void g_hook_insert_sorted (GHookList *hook_list,
      GHook *hook,
      GHookCompareFunc func);
extern
GHook* g_hook_get (GHookList *hook_list,
      gulong hook_id);
extern
GHook* g_hook_find (GHookList *hook_list,
      gboolean need_valids,
      GHookFindFunc func,
      gpointer data);
extern
GHook* g_hook_find_data (GHookList *hook_list,
      gboolean need_valids,
      gpointer data);
extern
GHook* g_hook_find_func (GHookList *hook_list,
      gboolean need_valids,
      gpointer func);
extern
GHook* g_hook_find_func_data (GHookList *hook_list,
      gboolean need_valids,
      gpointer func,
      gpointer data);

extern
GHook* g_hook_first_valid (GHookList *hook_list,
      gboolean may_be_in_call);



extern
GHook* g_hook_next_valid (GHookList *hook_list,
      GHook *hook,
      gboolean may_be_in_call);

extern
gint g_hook_compare_ids (GHook *new_hook,
      GHook *sibling);





extern
void g_hook_list_invoke (GHookList *hook_list,
      gboolean may_recurse);



extern
void g_hook_list_invoke_check (GHookList *hook_list,
      gboolean may_recurse);


extern
void g_hook_list_marshal (GHookList *hook_list,
      gboolean may_recurse,
      GHookMarshaller marshaller,
      gpointer marshal_data);
extern
void g_hook_list_marshal_check (GHookList *hook_list,
      gboolean may_recurse,
      GHookCheckMarshaller marshaller,
      gpointer marshal_data);
# 53 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/ghostutils.h" 1
# 29 "/usr/include/glib-2.0/glib/ghostutils.h"
extern
gboolean g_hostname_is_non_ascii (const gchar *hostname);
extern
gboolean g_hostname_is_ascii_encoded (const gchar *hostname);
extern
gboolean g_hostname_is_ip_address (const gchar *hostname);

extern
gchar *g_hostname_to_ascii (const gchar *hostname);
extern
gchar *g_hostname_to_unicode (const gchar *hostname);
# 54 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/giochannel.h" 1
# 33 "/usr/include/glib-2.0/glib/giochannel.h"
# 1 "/usr/include/glib-2.0/glib/gmain.h" 1
# 25 "/usr/include/glib-2.0/glib/gmain.h"
# 1 "/usr/include/glib-2.0/glib/gpoll.h" 1
# 58 "/usr/include/glib-2.0/glib/gpoll.h"
typedef struct _GPollFD GPollFD;
# 73 "/usr/include/glib-2.0/glib/gpoll.h"
typedef gint (*GPollFunc) (GPollFD *ufds,
                                 guint nfsd,
                                 gint timeout_);
# 90 "/usr/include/glib-2.0/glib/gpoll.h"
struct _GPollFD
{





  gint fd;

  gushort events;
  gushort revents;
};
# 119 "/usr/include/glib-2.0/glib/gpoll.h"
extern
gint
g_poll (GPollFD *fds,
 guint nfds,
 gint timeout);
# 26 "/usr/include/glib-2.0/glib/gmain.h" 2
# 1 "/usr/include/glib-2.0/glib/gslist.h" 1
# 37 "/usr/include/glib-2.0/glib/gslist.h"
typedef struct _GSList GSList;

struct _GSList
{
  gpointer data;
  GSList *next;
};



extern
GSList* g_slist_alloc (void) __attribute__((warn_unused_result));
extern
void g_slist_free (GSList *list);
extern
void g_slist_free_1 (GSList *list);

extern
void g_slist_free_full (GSList *list,
       GDestroyNotify free_func);
extern
GSList* g_slist_append (GSList *list,
       gpointer data) __attribute__((warn_unused_result));
extern
GSList* g_slist_prepend (GSList *list,
       gpointer data) __attribute__((warn_unused_result));
extern
GSList* g_slist_insert (GSList *list,
       gpointer data,
       gint position) __attribute__((warn_unused_result));
extern
GSList* g_slist_insert_sorted (GSList *list,
       gpointer data,
       GCompareFunc func) __attribute__((warn_unused_result));
extern
GSList* g_slist_insert_sorted_with_data (GSList *list,
       gpointer data,
       GCompareDataFunc func,
       gpointer user_data) __attribute__((warn_unused_result));
extern
GSList* g_slist_insert_before (GSList *slist,
       GSList *sibling,
       gpointer data) __attribute__((warn_unused_result));
extern
GSList* g_slist_concat (GSList *list1,
       GSList *list2) __attribute__((warn_unused_result));
extern
GSList* g_slist_remove (GSList *list,
       gconstpointer data) __attribute__((warn_unused_result));
extern
GSList* g_slist_remove_all (GSList *list,
       gconstpointer data) __attribute__((warn_unused_result));
extern
GSList* g_slist_remove_link (GSList *list,
       GSList *link_) __attribute__((warn_unused_result));
extern
GSList* g_slist_delete_link (GSList *list,
       GSList *link_) __attribute__((warn_unused_result));
extern
GSList* g_slist_reverse (GSList *list) __attribute__((warn_unused_result));
extern
GSList* g_slist_copy (GSList *list) __attribute__((warn_unused_result));

extern
GSList* g_slist_copy_deep (GSList *list,
       GCopyFunc func,
       gpointer user_data) __attribute__((warn_unused_result));
extern
GSList* g_slist_nth (GSList *list,
       guint n);
extern
GSList* g_slist_find (GSList *list,
       gconstpointer data);
extern
GSList* g_slist_find_custom (GSList *list,
       gconstpointer data,
       GCompareFunc func);
extern
gint g_slist_position (GSList *list,
       GSList *llink);
extern
gint g_slist_index (GSList *list,
       gconstpointer data);
extern
GSList* g_slist_last (GSList *list);
extern
guint g_slist_length (GSList *list);
extern
void g_slist_foreach (GSList *list,
       GFunc func,
       gpointer user_data);
extern
GSList* g_slist_sort (GSList *list,
       GCompareFunc compare_func) __attribute__((warn_unused_result));
extern
GSList* g_slist_sort_with_data (GSList *list,
       GCompareDataFunc compare_func,
       gpointer user_data) __attribute__((warn_unused_result));
extern
gpointer g_slist_nth_data (GSList *list,
       guint n);
# 27 "/usr/include/glib-2.0/glib/gmain.h" 2




typedef enum
{
  G_IO_IN =1,
  G_IO_OUT =4,
  G_IO_PRI =2,
  G_IO_ERR =8,
  G_IO_HUP =16,
  G_IO_NVAL =32
} GIOCondition;
# 48 "/usr/include/glib-2.0/glib/gmain.h"
typedef struct _GMainContext GMainContext;







typedef struct _GMainLoop GMainLoop;







typedef struct _GSource GSource;
typedef struct _GSourcePrivate GSourcePrivate;
# 77 "/usr/include/glib-2.0/glib/gmain.h"
typedef struct _GSourceCallbackFuncs GSourceCallbackFuncs;
# 128 "/usr/include/glib-2.0/glib/gmain.h"
typedef struct _GSourceFuncs GSourceFuncs;
# 153 "/usr/include/glib-2.0/glib/gmain.h"
typedef gboolean (*GSourceFunc) (gpointer user_data);
# 166 "/usr/include/glib-2.0/glib/gmain.h"
typedef void (*GChildWatchFunc) (GPid pid,
                                       gint status,
                                       gpointer user_data);
struct _GSource
{

  gpointer callback_data;
  GSourceCallbackFuncs *callback_funcs;

  const GSourceFuncs *source_funcs;
  guint ref_count;

  GMainContext *context;

  gint priority;
  guint flags;
  guint source_id;

  GSList *poll_fds;

  GSource *prev;
  GSource *next;

  char *name;

  GSourcePrivate *priv;
};

struct _GSourceCallbackFuncs
{
  void (*ref) (gpointer cb_data);
  void (*unref) (gpointer cb_data);
  void (*get) (gpointer cb_data,
                 GSource *source,
                 GSourceFunc *func,
                 gpointer *data);
};







typedef void (*GSourceDummyMarshal) (void);

struct _GSourceFuncs
{
  gboolean (*prepare) (GSource *source,
                        gint *timeout_);
  gboolean (*check) (GSource *source);
  gboolean (*dispatch) (GSource *source,
                        GSourceFunc callback,
                        gpointer user_data);
  void (*finalize) (GSource *source);



  GSourceFunc closure_callback;
  GSourceDummyMarshal closure_marshal;
};
# 303 "/usr/include/glib-2.0/glib/gmain.h"
extern
GMainContext *g_main_context_new (void);
extern
GMainContext *g_main_context_ref (GMainContext *context);
extern
void g_main_context_unref (GMainContext *context);
extern
GMainContext *g_main_context_default (void);

extern
gboolean g_main_context_iteration (GMainContext *context,
                                        gboolean may_block);
extern
gboolean g_main_context_pending (GMainContext *context);



extern
GSource *g_main_context_find_source_by_id (GMainContext *context,
                                                             guint source_id);
extern
GSource *g_main_context_find_source_by_user_data (GMainContext *context,
                                                             gpointer user_data);
extern
GSource *g_main_context_find_source_by_funcs_user_data (GMainContext *context,
                                                             GSourceFuncs *funcs,
                                                             gpointer user_data);



extern
void g_main_context_wakeup (GMainContext *context);
extern
gboolean g_main_context_acquire (GMainContext *context);
extern
void g_main_context_release (GMainContext *context);
extern
gboolean g_main_context_is_owner (GMainContext *context);
extern
gboolean g_main_context_wait (GMainContext *context,
                                 GCond *cond,
                                 GMutex *mutex);

extern
gboolean g_main_context_prepare (GMainContext *context,
                                  gint *priority);
extern
gint g_main_context_query (GMainContext *context,
                                  gint max_priority,
                                  gint *timeout_,
                                  GPollFD *fds,
                                  gint n_fds);
extern
gint g_main_context_check (GMainContext *context,
                                  gint max_priority,
                                  GPollFD *fds,
                                  gint n_fds);
extern
void g_main_context_dispatch (GMainContext *context);

extern
void g_main_context_set_poll_func (GMainContext *context,
                                       GPollFunc func);
extern
GPollFunc g_main_context_get_poll_func (GMainContext *context);



extern
void g_main_context_add_poll (GMainContext *context,
                                     GPollFD *fd,
                                     gint priority);
extern
void g_main_context_remove_poll (GMainContext *context,
                                     GPollFD *fd);

extern
gint g_main_depth (void);
extern
GSource *g_main_current_source (void);



extern
void g_main_context_push_thread_default (GMainContext *context);
extern
void g_main_context_pop_thread_default (GMainContext *context);
extern
GMainContext *g_main_context_get_thread_default (void);
extern
GMainContext *g_main_context_ref_thread_default (void);



extern
GMainLoop *g_main_loop_new (GMainContext *context,
                                   gboolean is_running);
extern
void g_main_loop_run (GMainLoop *loop);
extern
void g_main_loop_quit (GMainLoop *loop);
extern
GMainLoop *g_main_loop_ref (GMainLoop *loop);
extern
void g_main_loop_unref (GMainLoop *loop);
extern
gboolean g_main_loop_is_running (GMainLoop *loop);
extern
GMainContext *g_main_loop_get_context (GMainLoop *loop);



extern
GSource *g_source_new (GSourceFuncs *source_funcs,
                                   guint struct_size);
extern
GSource *g_source_ref (GSource *source);
extern
void g_source_unref (GSource *source);

extern
guint g_source_attach (GSource *source,
                                   GMainContext *context);
extern
void g_source_destroy (GSource *source);

extern
void g_source_set_priority (GSource *source,
                                   gint priority);
extern
gint g_source_get_priority (GSource *source);
extern
void g_source_set_can_recurse (GSource *source,
                                   gboolean can_recurse);
extern
gboolean g_source_get_can_recurse (GSource *source);
extern
guint g_source_get_id (GSource *source);

extern
GMainContext *g_source_get_context (GSource *source);

extern
void g_source_set_callback (GSource *source,
                                   GSourceFunc func,
                                   gpointer data,
                                   GDestroyNotify notify);

extern
void g_source_set_funcs (GSource *source,
                                   GSourceFuncs *funcs);
extern
gboolean g_source_is_destroyed (GSource *source);

extern
void g_source_set_name (GSource *source,
                                              const char *name);
extern
const char * g_source_get_name (GSource *source);
extern
void g_source_set_name_by_id (guint tag,
                                              const char *name);

extern
void g_source_set_ready_time (GSource *source,
                                              gint64 ready_time);
extern
gint64 g_source_get_ready_time (GSource *source);


extern
gpointer g_source_add_unix_fd (GSource *source,
                                              gint fd,
                                              GIOCondition events);
extern
void g_source_modify_unix_fd (GSource *source,
                                              gpointer tag,
                                              GIOCondition new_events);
extern
void g_source_remove_unix_fd (GSource *source,
                                              gpointer tag);
extern
GIOCondition g_source_query_unix_fd (GSource *source,
                                              gpointer tag);



extern
void g_source_set_callback_indirect (GSource *source,
                                     gpointer callback_data,
                                     GSourceCallbackFuncs *callback_funcs);

extern
void g_source_add_poll (GSource *source,
           GPollFD *fd);
extern
void g_source_remove_poll (GSource *source,
           GPollFD *fd);

extern
void g_source_add_child_source (GSource *source,
           GSource *child_source);
extern
void g_source_remove_child_source (GSource *source,
           GSource *child_source);

__attribute__((__deprecated__)) extern
void g_source_get_current_time (GSource *source,
                                    GTimeVal *timeval);

extern
gint64 g_source_get_time (GSource *source);







extern
GSource *g_idle_source_new (void);
extern
GSource *g_child_watch_source_new (GPid pid);
extern
GSource *g_timeout_source_new (guint interval);
extern
GSource *g_timeout_source_new_seconds (guint interval);



extern
void g_get_current_time (GTimeVal *result);
extern
gint64 g_get_monotonic_time (void);
extern
gint64 g_get_real_time (void);



extern
gboolean g_source_remove (guint tag);
extern
gboolean g_source_remove_by_user_data (gpointer user_data);
extern
gboolean g_source_remove_by_funcs_user_data (GSourceFuncs *funcs,
                                              gpointer user_data);


extern
guint g_timeout_add_full (gint priority,
                                     guint interval,
                                     GSourceFunc function,
                                     gpointer data,
                                     GDestroyNotify notify);
extern
guint g_timeout_add (guint interval,
                                     GSourceFunc function,
                                     gpointer data);
extern
guint g_timeout_add_seconds_full (gint priority,
                                     guint interval,
                                     GSourceFunc function,
                                     gpointer data,
                                     GDestroyNotify notify);
extern
guint g_timeout_add_seconds (guint interval,
                                     GSourceFunc function,
                                     gpointer data);
extern
guint g_child_watch_add_full (gint priority,
                                     GPid pid,
                                     GChildWatchFunc function,
                                     gpointer data,
                                     GDestroyNotify notify);
extern
guint g_child_watch_add (GPid pid,
                                     GChildWatchFunc function,
                                     gpointer data);
extern
guint g_idle_add (GSourceFunc function,
                                     gpointer data);
extern
guint g_idle_add_full (gint priority,
                                     GSourceFunc function,
                                     gpointer data,
                                     GDestroyNotify notify);
extern
gboolean g_idle_remove_by_data (gpointer data);

extern
void g_main_context_invoke_full (GMainContext *context,
                                     gint priority,
                                     GSourceFunc function,
                                     gpointer data,
                                     GDestroyNotify notify);
extern
void g_main_context_invoke (GMainContext *context,
                                     GSourceFunc function,
                                     gpointer data);


extern GSourceFuncs g_timeout_funcs;
extern GSourceFuncs g_child_watch_funcs;
extern GSourceFuncs g_idle_funcs;

extern GSourceFuncs g_unix_signal_funcs;
extern GSourceFuncs g_unix_fd_source_funcs;
# 34 "/usr/include/glib-2.0/glib/giochannel.h" 2
# 1 "/usr/include/glib-2.0/glib/gstring.h" 1
# 33 "/usr/include/glib-2.0/glib/gstring.h"
# 1 "/usr/include/glib-2.0/glib/gunicode.h" 1
# 60 "/usr/include/glib-2.0/glib/gunicode.h"
typedef guint32 gunichar;
# 78 "/usr/include/glib-2.0/glib/gunicode.h"
typedef guint16 gunichar2;
# 117 "/usr/include/glib-2.0/glib/gunicode.h"
typedef enum
{
  G_UNICODE_CONTROL,
  G_UNICODE_FORMAT,
  G_UNICODE_UNASSIGNED,
  G_UNICODE_PRIVATE_USE,
  G_UNICODE_SURROGATE,
  G_UNICODE_LOWERCASE_LETTER,
  G_UNICODE_MODIFIER_LETTER,
  G_UNICODE_OTHER_LETTER,
  G_UNICODE_TITLECASE_LETTER,
  G_UNICODE_UPPERCASE_LETTER,
  G_UNICODE_SPACING_MARK,
  G_UNICODE_ENCLOSING_MARK,
  G_UNICODE_NON_SPACING_MARK,
  G_UNICODE_DECIMAL_NUMBER,
  G_UNICODE_LETTER_NUMBER,
  G_UNICODE_OTHER_NUMBER,
  G_UNICODE_CONNECT_PUNCTUATION,
  G_UNICODE_DASH_PUNCTUATION,
  G_UNICODE_CLOSE_PUNCTUATION,
  G_UNICODE_FINAL_PUNCTUATION,
  G_UNICODE_INITIAL_PUNCTUATION,
  G_UNICODE_OTHER_PUNCTUATION,
  G_UNICODE_OPEN_PUNCTUATION,
  G_UNICODE_CURRENCY_SYMBOL,
  G_UNICODE_MODIFIER_SYMBOL,
  G_UNICODE_MATH_SYMBOL,
  G_UNICODE_OTHER_SYMBOL,
  G_UNICODE_LINE_SEPARATOR,
  G_UNICODE_PARAGRAPH_SEPARATOR,
  G_UNICODE_SPACE_SEPARATOR
} GUnicodeType;
# 212 "/usr/include/glib-2.0/glib/gunicode.h"
typedef enum
{
  G_UNICODE_BREAK_MANDATORY,
  G_UNICODE_BREAK_CARRIAGE_RETURN,
  G_UNICODE_BREAK_LINE_FEED,
  G_UNICODE_BREAK_COMBINING_MARK,
  G_UNICODE_BREAK_SURROGATE,
  G_UNICODE_BREAK_ZERO_WIDTH_SPACE,
  G_UNICODE_BREAK_INSEPARABLE,
  G_UNICODE_BREAK_NON_BREAKING_GLUE,
  G_UNICODE_BREAK_CONTINGENT,
  G_UNICODE_BREAK_SPACE,
  G_UNICODE_BREAK_AFTER,
  G_UNICODE_BREAK_BEFORE,
  G_UNICODE_BREAK_BEFORE_AND_AFTER,
  G_UNICODE_BREAK_HYPHEN,
  G_UNICODE_BREAK_NON_STARTER,
  G_UNICODE_BREAK_OPEN_PUNCTUATION,
  G_UNICODE_BREAK_CLOSE_PUNCTUATION,
  G_UNICODE_BREAK_QUOTATION,
  G_UNICODE_BREAK_EXCLAMATION,
  G_UNICODE_BREAK_IDEOGRAPHIC,
  G_UNICODE_BREAK_NUMERIC,
  G_UNICODE_BREAK_INFIX_SEPARATOR,
  G_UNICODE_BREAK_SYMBOL,
  G_UNICODE_BREAK_ALPHABETIC,
  G_UNICODE_BREAK_PREFIX,
  G_UNICODE_BREAK_POSTFIX,
  G_UNICODE_BREAK_COMPLEX_CONTEXT,
  G_UNICODE_BREAK_AMBIGUOUS,
  G_UNICODE_BREAK_UNKNOWN,
  G_UNICODE_BREAK_NEXT_LINE,
  G_UNICODE_BREAK_WORD_JOINER,
  G_UNICODE_BREAK_HANGUL_L_JAMO,
  G_UNICODE_BREAK_HANGUL_V_JAMO,
  G_UNICODE_BREAK_HANGUL_T_JAMO,
  G_UNICODE_BREAK_HANGUL_LV_SYLLABLE,
  G_UNICODE_BREAK_HANGUL_LVT_SYLLABLE,
  G_UNICODE_BREAK_CLOSE_PARANTHESIS,
  G_UNICODE_BREAK_CONDITIONAL_JAPANESE_STARTER,
  G_UNICODE_BREAK_HEBREW_LETTER,
  G_UNICODE_BREAK_REGIONAL_INDICATOR
} GUnicodeBreakType;
# 409 "/usr/include/glib-2.0/glib/gunicode.h"
typedef enum
{
  G_UNICODE_SCRIPT_INVALID_CODE = -1,
  G_UNICODE_SCRIPT_COMMON = 0,
  G_UNICODE_SCRIPT_INHERITED,
  G_UNICODE_SCRIPT_ARABIC,
  G_UNICODE_SCRIPT_ARMENIAN,
  G_UNICODE_SCRIPT_BENGALI,
  G_UNICODE_SCRIPT_BOPOMOFO,
  G_UNICODE_SCRIPT_CHEROKEE,
  G_UNICODE_SCRIPT_COPTIC,
  G_UNICODE_SCRIPT_CYRILLIC,
  G_UNICODE_SCRIPT_DESERET,
  G_UNICODE_SCRIPT_DEVANAGARI,
  G_UNICODE_SCRIPT_ETHIOPIC,
  G_UNICODE_SCRIPT_GEORGIAN,
  G_UNICODE_SCRIPT_GOTHIC,
  G_UNICODE_SCRIPT_GREEK,
  G_UNICODE_SCRIPT_GUJARATI,
  G_UNICODE_SCRIPT_GURMUKHI,
  G_UNICODE_SCRIPT_HAN,
  G_UNICODE_SCRIPT_HANGUL,
  G_UNICODE_SCRIPT_HEBREW,
  G_UNICODE_SCRIPT_HIRAGANA,
  G_UNICODE_SCRIPT_KANNADA,
  G_UNICODE_SCRIPT_KATAKANA,
  G_UNICODE_SCRIPT_KHMER,
  G_UNICODE_SCRIPT_LAO,
  G_UNICODE_SCRIPT_LATIN,
  G_UNICODE_SCRIPT_MALAYALAM,
  G_UNICODE_SCRIPT_MONGOLIAN,
  G_UNICODE_SCRIPT_MYANMAR,
  G_UNICODE_SCRIPT_OGHAM,
  G_UNICODE_SCRIPT_OLD_ITALIC,
  G_UNICODE_SCRIPT_ORIYA,
  G_UNICODE_SCRIPT_RUNIC,
  G_UNICODE_SCRIPT_SINHALA,
  G_UNICODE_SCRIPT_SYRIAC,
  G_UNICODE_SCRIPT_TAMIL,
  G_UNICODE_SCRIPT_TELUGU,
  G_UNICODE_SCRIPT_THAANA,
  G_UNICODE_SCRIPT_THAI,
  G_UNICODE_SCRIPT_TIBETAN,
  G_UNICODE_SCRIPT_CANADIAN_ABORIGINAL,
  G_UNICODE_SCRIPT_YI,
  G_UNICODE_SCRIPT_TAGALOG,
  G_UNICODE_SCRIPT_HANUNOO,
  G_UNICODE_SCRIPT_BUHID,
  G_UNICODE_SCRIPT_TAGBANWA,


  G_UNICODE_SCRIPT_BRAILLE,
  G_UNICODE_SCRIPT_CYPRIOT,
  G_UNICODE_SCRIPT_LIMBU,
  G_UNICODE_SCRIPT_OSMANYA,
  G_UNICODE_SCRIPT_SHAVIAN,
  G_UNICODE_SCRIPT_LINEAR_B,
  G_UNICODE_SCRIPT_TAI_LE,
  G_UNICODE_SCRIPT_UGARITIC,


  G_UNICODE_SCRIPT_NEW_TAI_LUE,
  G_UNICODE_SCRIPT_BUGINESE,
  G_UNICODE_SCRIPT_GLAGOLITIC,
  G_UNICODE_SCRIPT_TIFINAGH,
  G_UNICODE_SCRIPT_SYLOTI_NAGRI,
  G_UNICODE_SCRIPT_OLD_PERSIAN,
  G_UNICODE_SCRIPT_KHAROSHTHI,


  G_UNICODE_SCRIPT_UNKNOWN,
  G_UNICODE_SCRIPT_BALINESE,
  G_UNICODE_SCRIPT_CUNEIFORM,
  G_UNICODE_SCRIPT_PHOENICIAN,
  G_UNICODE_SCRIPT_PHAGS_PA,
  G_UNICODE_SCRIPT_NKO,


  G_UNICODE_SCRIPT_KAYAH_LI,
  G_UNICODE_SCRIPT_LEPCHA,
  G_UNICODE_SCRIPT_REJANG,
  G_UNICODE_SCRIPT_SUNDANESE,
  G_UNICODE_SCRIPT_SAURASHTRA,
  G_UNICODE_SCRIPT_CHAM,
  G_UNICODE_SCRIPT_OL_CHIKI,
  G_UNICODE_SCRIPT_VAI,
  G_UNICODE_SCRIPT_CARIAN,
  G_UNICODE_SCRIPT_LYCIAN,
  G_UNICODE_SCRIPT_LYDIAN,


  G_UNICODE_SCRIPT_AVESTAN,
  G_UNICODE_SCRIPT_BAMUM,
  G_UNICODE_SCRIPT_EGYPTIAN_HIEROGLYPHS,
  G_UNICODE_SCRIPT_IMPERIAL_ARAMAIC,
  G_UNICODE_SCRIPT_INSCRIPTIONAL_PAHLAVI,
  G_UNICODE_SCRIPT_INSCRIPTIONAL_PARTHIAN,
  G_UNICODE_SCRIPT_JAVANESE,
  G_UNICODE_SCRIPT_KAITHI,
  G_UNICODE_SCRIPT_LISU,
  G_UNICODE_SCRIPT_MEETEI_MAYEK,
  G_UNICODE_SCRIPT_OLD_SOUTH_ARABIAN,
  G_UNICODE_SCRIPT_OLD_TURKIC,
  G_UNICODE_SCRIPT_SAMARITAN,
  G_UNICODE_SCRIPT_TAI_THAM,
  G_UNICODE_SCRIPT_TAI_VIET,


  G_UNICODE_SCRIPT_BATAK,
  G_UNICODE_SCRIPT_BRAHMI,
  G_UNICODE_SCRIPT_MANDAIC,


  G_UNICODE_SCRIPT_CHAKMA,
  G_UNICODE_SCRIPT_MEROITIC_CURSIVE,
  G_UNICODE_SCRIPT_MEROITIC_HIEROGLYPHS,
  G_UNICODE_SCRIPT_MIAO,
  G_UNICODE_SCRIPT_SHARADA,
  G_UNICODE_SCRIPT_SORA_SOMPENG,
  G_UNICODE_SCRIPT_TAKRI,


  G_UNICODE_SCRIPT_BASSA_VAH,
  G_UNICODE_SCRIPT_CAUCASIAN_ALBANIAN,
  G_UNICODE_SCRIPT_DUPLOYAN,
  G_UNICODE_SCRIPT_ELBASAN,
  G_UNICODE_SCRIPT_GRANTHA,
  G_UNICODE_SCRIPT_KHOJKI,
  G_UNICODE_SCRIPT_KHUDAWADI,
  G_UNICODE_SCRIPT_LINEAR_A,
  G_UNICODE_SCRIPT_MAHAJANI,
  G_UNICODE_SCRIPT_MANICHAEAN,
  G_UNICODE_SCRIPT_MENDE_KIKAKUI,
  G_UNICODE_SCRIPT_MODI,
  G_UNICODE_SCRIPT_MRO,
  G_UNICODE_SCRIPT_NABATAEAN,
  G_UNICODE_SCRIPT_OLD_NORTH_ARABIAN,
  G_UNICODE_SCRIPT_OLD_PERMIC,
  G_UNICODE_SCRIPT_PAHAWH_HMONG,
  G_UNICODE_SCRIPT_PALMYRENE,
  G_UNICODE_SCRIPT_PAU_CIN_HAU,
  G_UNICODE_SCRIPT_PSALTER_PAHLAVI,
  G_UNICODE_SCRIPT_SIDDHAM,
  G_UNICODE_SCRIPT_TIRHUTA,
  G_UNICODE_SCRIPT_WARANG_CITI
} GUnicodeScript;

extern
guint32 g_unicode_script_to_iso15924 (GUnicodeScript script);
extern
GUnicodeScript g_unicode_script_from_iso15924 (guint32 iso15924);



extern
gboolean g_unichar_isalnum (gunichar c) __attribute__((__const__));
extern
gboolean g_unichar_isalpha (gunichar c) __attribute__((__const__));
extern
gboolean g_unichar_iscntrl (gunichar c) __attribute__((__const__));
extern
gboolean g_unichar_isdigit (gunichar c) __attribute__((__const__));
extern
gboolean g_unichar_isgraph (gunichar c) __attribute__((__const__));
extern
gboolean g_unichar_islower (gunichar c) __attribute__((__const__));
extern
gboolean g_unichar_isprint (gunichar c) __attribute__((__const__));
extern
gboolean g_unichar_ispunct (gunichar c) __attribute__((__const__));
extern
gboolean g_unichar_isspace (gunichar c) __attribute__((__const__));
extern
gboolean g_unichar_isupper (gunichar c) __attribute__((__const__));
extern
gboolean g_unichar_isxdigit (gunichar c) __attribute__((__const__));
extern
gboolean g_unichar_istitle (gunichar c) __attribute__((__const__));
extern
gboolean g_unichar_isdefined (gunichar c) __attribute__((__const__));
extern
gboolean g_unichar_iswide (gunichar c) __attribute__((__const__));
extern
gboolean g_unichar_iswide_cjk(gunichar c) __attribute__((__const__));
extern
gboolean g_unichar_iszerowidth(gunichar c) __attribute__((__const__));
extern
gboolean g_unichar_ismark (gunichar c) __attribute__((__const__));



extern
gunichar g_unichar_toupper (gunichar c) __attribute__((__const__));
extern
gunichar g_unichar_tolower (gunichar c) __attribute__((__const__));
extern
gunichar g_unichar_totitle (gunichar c) __attribute__((__const__));



extern
gint g_unichar_digit_value (gunichar c) __attribute__((__const__));

extern
gint g_unichar_xdigit_value (gunichar c) __attribute__((__const__));


extern
GUnicodeType g_unichar_type (gunichar c) __attribute__((__const__));


extern
GUnicodeBreakType g_unichar_break_type (gunichar c) __attribute__((__const__));


extern
gint g_unichar_combining_class (gunichar uc) __attribute__((__const__));

extern
gboolean g_unichar_get_mirror_char (gunichar ch,
                                    gunichar *mirrored_ch);

extern
GUnicodeScript g_unichar_get_script (gunichar ch) __attribute__((__const__));


extern
gboolean g_unichar_validate (gunichar ch) __attribute__((__const__));


extern
gboolean g_unichar_compose (gunichar a,
                            gunichar b,
                            gunichar *ch);
extern
gboolean g_unichar_decompose (gunichar ch,
                              gunichar *a,
                              gunichar *b);

extern
gsize g_unichar_fully_decompose (gunichar ch,
                                 gboolean compat,
                                 gunichar *result,
                                 gsize result_len);
# 669 "/usr/include/glib-2.0/glib/gunicode.h"
extern
void g_unicode_canonical_ordering (gunichar *string,
                                   gsize len);


__attribute__((__deprecated__)) extern
gunichar *g_unicode_canonical_decomposition (gunichar ch,
                                             gsize *result_len) __attribute__((__malloc__));



extern const gchar * const g_utf8_skip;
# 695 "/usr/include/glib-2.0/glib/gunicode.h"
extern
gunichar g_utf8_get_char (const gchar *p) __attribute__((__pure__));
extern
gunichar g_utf8_get_char_validated (const gchar *p,
                                    gssize max_len) __attribute__((__pure__));

extern
gchar* g_utf8_offset_to_pointer (const gchar *str,
                                   glong offset) __attribute__((__pure__));
extern
glong g_utf8_pointer_to_offset (const gchar *str,
                                   const gchar *pos) __attribute__((__pure__));
extern
gchar* g_utf8_prev_char (const gchar *p) __attribute__((__pure__));
extern
gchar* g_utf8_find_next_char (const gchar *p,
                                   const gchar *end) __attribute__((__pure__));
extern
gchar* g_utf8_find_prev_char (const gchar *str,
                                   const gchar *p) __attribute__((__pure__));

extern
glong g_utf8_strlen (const gchar *p,
                                   gssize max) __attribute__((__pure__));

extern
gchar *g_utf8_substring (const gchar *str,
                                   glong start_pos,
                                   glong end_pos) __attribute__((__malloc__));

extern
gchar *g_utf8_strncpy (gchar *dest,
                                   const gchar *src,
                                   gsize n);



extern
gchar* g_utf8_strchr (const gchar *p,
                       gssize len,
                       gunichar c);
extern
gchar* g_utf8_strrchr (const gchar *p,
                       gssize len,
                       gunichar c);
extern
gchar* g_utf8_strreverse (const gchar *str,
                          gssize len);

extern
gunichar2 *g_utf8_to_utf16 (const gchar *str,
                                glong len,
                                glong *items_read,
                                glong *items_written,
                                GError **error) __attribute__((__malloc__));
extern
gunichar * g_utf8_to_ucs4 (const gchar *str,
                                glong len,
                                glong *items_read,
                                glong *items_written,
                                GError **error) __attribute__((__malloc__));
extern
gunichar * g_utf8_to_ucs4_fast (const gchar *str,
                                glong len,
                                glong *items_written) __attribute__((__malloc__));
extern
gunichar * g_utf16_to_ucs4 (const gunichar2 *str,
                                glong len,
                                glong *items_read,
                                glong *items_written,
                                GError **error) __attribute__((__malloc__));
extern
gchar* g_utf16_to_utf8 (const gunichar2 *str,
                                glong len,
                                glong *items_read,
                                glong *items_written,
                                GError **error) __attribute__((__malloc__));
extern
gunichar2 *g_ucs4_to_utf16 (const gunichar *str,
                                glong len,
                                glong *items_read,
                                glong *items_written,
                                GError **error) __attribute__((__malloc__));
extern
gchar* g_ucs4_to_utf8 (const gunichar *str,
                                glong len,
                                glong *items_read,
                                glong *items_written,
                                GError **error) __attribute__((__malloc__));

extern
gint g_unichar_to_utf8 (gunichar c,
                             gchar *outbuf);

extern
gboolean g_utf8_validate (const gchar *str,
                          gssize max_len,
                          const gchar **end);

extern
gchar *g_utf8_strup (const gchar *str,
                       gssize len) __attribute__((__malloc__));
extern
gchar *g_utf8_strdown (const gchar *str,
                       gssize len) __attribute__((__malloc__));
extern
gchar *g_utf8_casefold (const gchar *str,
                        gssize len) __attribute__((__malloc__));
# 828 "/usr/include/glib-2.0/glib/gunicode.h"
typedef enum {
  G_NORMALIZE_DEFAULT,
  G_NORMALIZE_NFD = G_NORMALIZE_DEFAULT,
  G_NORMALIZE_DEFAULT_COMPOSE,
  G_NORMALIZE_NFC = G_NORMALIZE_DEFAULT_COMPOSE,
  G_NORMALIZE_ALL,
  G_NORMALIZE_NFKD = G_NORMALIZE_ALL,
  G_NORMALIZE_ALL_COMPOSE,
  G_NORMALIZE_NFKC = G_NORMALIZE_ALL_COMPOSE
} GNormalizeMode;

extern
gchar *g_utf8_normalize (const gchar *str,
                         gssize len,
                         GNormalizeMode mode) __attribute__((__malloc__));

extern
gint g_utf8_collate (const gchar *str1,
                           const gchar *str2) __attribute__((__pure__));
extern
gchar *g_utf8_collate_key (const gchar *str,
                           gssize len) __attribute__((__malloc__));
extern
gchar *g_utf8_collate_key_for_filename (const gchar *str,
                                        gssize len) __attribute__((__malloc__));



gchar *_g_utf8_make_valid (const gchar *name);
# 34 "/usr/include/glib-2.0/glib/gstring.h" 2

# 1 "/usr/include/glib-2.0/glib/gutils.h" 1
# 85 "/usr/include/glib-2.0/glib/gutils.h"
extern
const gchar * g_get_user_name (void);
extern
const gchar * g_get_real_name (void);
extern
const gchar * g_get_home_dir (void);
extern
const gchar * g_get_tmp_dir (void);
extern
const gchar * g_get_host_name (void);
extern
const gchar * g_get_prgname (void);
extern
void g_set_prgname (const gchar *prgname);
extern
const gchar * g_get_application_name (void);
extern
void g_set_application_name (const gchar *application_name);

extern
void g_reload_user_special_dirs_cache (void);
extern
const gchar * g_get_user_data_dir (void);
extern
const gchar * g_get_user_config_dir (void);
extern
const gchar * g_get_user_cache_dir (void);
extern
const gchar * const * g_get_system_data_dirs (void);
# 134 "/usr/include/glib-2.0/glib/gutils.h"
extern
const gchar * const * g_get_system_config_dirs (void);

extern
const gchar * g_get_user_runtime_dir (void);
# 162 "/usr/include/glib-2.0/glib/gutils.h"
typedef enum {
  G_USER_DIRECTORY_DESKTOP,
  G_USER_DIRECTORY_DOCUMENTS,
  G_USER_DIRECTORY_DOWNLOAD,
  G_USER_DIRECTORY_MUSIC,
  G_USER_DIRECTORY_PICTURES,
  G_USER_DIRECTORY_PUBLIC_SHARE,
  G_USER_DIRECTORY_TEMPLATES,
  G_USER_DIRECTORY_VIDEOS,

  G_USER_N_DIRECTORIES
} GUserDirectory;

extern
const gchar * g_get_user_special_dir (GUserDirectory directory);
# 186 "/usr/include/glib-2.0/glib/gutils.h"
typedef struct _GDebugKey GDebugKey;
struct _GDebugKey
{
  const gchar *key;
  guint value;
};



extern
guint g_parse_debug_string (const gchar *string,
         const GDebugKey *keys,
         guint nkeys);

extern
gint g_snprintf (gchar *string,
         gulong n,
         gchar const *format,
         ...) __attribute__((__format__ (__printf__, 3, 4)));
extern
gint g_vsnprintf (gchar *string,
         gulong n,
         gchar const *format,
         va_list args)
         __attribute__((__format__ (__printf__, 3, 0)));

extern
void g_nullify_pointer (gpointer *nullify_location);

typedef enum
{
  G_FORMAT_SIZE_DEFAULT = 0,
  G_FORMAT_SIZE_LONG_FORMAT = 1 << 0,
  G_FORMAT_SIZE_IEC_UNITS = 1 << 1
} GFormatSizeFlags;

extern
gchar *g_format_size_full (guint64 size,
                             GFormatSizeFlags flags);
extern
gchar *g_format_size (guint64 size);

__attribute__((__deprecated__)) extern
gchar *g_format_size_for_display (goffset size);
# 239 "/usr/include/glib-2.0/glib/gutils.h"
typedef void (*GVoidFunc) (void);

__attribute__((__deprecated__)) extern
void g_atexit (GVoidFunc func);
# 261 "/usr/include/glib-2.0/glib/gutils.h"
extern
gchar* g_find_program_in_path (const gchar *program);



static __inline __attribute__ ((unused)) gint g_bit_nth_lsf (gulong mask,
           gint nth_bit) __attribute__((__const__));
static __inline __attribute__ ((unused)) gint g_bit_nth_msf (gulong mask,
           gint nth_bit) __attribute__((__const__));
static __inline __attribute__ ((unused)) guint g_bit_storage (gulong number) __attribute__((__const__));




static __inline __attribute__ ((unused)) gint
g_bit_nth_lsf (gulong mask,
        gint nth_bit)
{
  if ((nth_bit < -1))
    nth_bit = -1;
  while (nth_bit < ((8 * 8) - 1))
    {
      nth_bit++;
      if (mask & (1UL << nth_bit))
 return nth_bit;
    }
  return -1;
}
static __inline __attribute__ ((unused)) gint
g_bit_nth_msf (gulong mask,
        gint nth_bit)
{
  if (nth_bit < 0 || (nth_bit > 8 * 8))
    nth_bit = 8 * 8;
  while (nth_bit > 0)
    {
      nth_bit--;
      if (mask & (1UL << nth_bit))
 return nth_bit;
    }
  return -1;
}
static __inline __attribute__ ((unused)) guint
g_bit_storage (gulong number)
{




  guint n_bits = 0;

  do
    {
      n_bits++;
      number >>= 1;
    }
  while (number);
  return n_bits;

}
# 36 "/usr/include/glib-2.0/glib/gstring.h" 2



typedef struct _GString GString;

struct _GString
{
  gchar *str;
  gsize len;
  gsize allocated_len;
};

extern
GString* g_string_new (const gchar *init);
extern
GString* g_string_new_len (const gchar *init,
                                         gssize len);
extern
GString* g_string_sized_new (gsize dfl_size);
extern
gchar* g_string_free (GString *string,
                                         gboolean free_segment);
extern
GBytes* g_string_free_to_bytes (GString *string);
extern
gboolean g_string_equal (const GString *v,
                                         const GString *v2);
extern
guint g_string_hash (const GString *str);
extern
GString* g_string_assign (GString *string,
                                         const gchar *rval);
extern
GString* g_string_truncate (GString *string,
                                         gsize len);
extern
GString* g_string_set_size (GString *string,
                                         gsize len);
extern
GString* g_string_insert_len (GString *string,
                                         gssize pos,
                                         const gchar *val,
                                         gssize len);
extern
GString* g_string_append (GString *string,
                                         const gchar *val);
extern
GString* g_string_append_len (GString *string,
                                         const gchar *val,
                                         gssize len);
extern
GString* g_string_append_c (GString *string,
                                         gchar c);
extern
GString* g_string_append_unichar (GString *string,
                                         gunichar wc);
extern
GString* g_string_prepend (GString *string,
                                         const gchar *val);
extern
GString* g_string_prepend_c (GString *string,
                                         gchar c);
extern
GString* g_string_prepend_unichar (GString *string,
                                         gunichar wc);
extern
GString* g_string_prepend_len (GString *string,
                                         const gchar *val,
                                         gssize len);
extern
GString* g_string_insert (GString *string,
                                         gssize pos,
                                         const gchar *val);
extern
GString* g_string_insert_c (GString *string,
                                         gssize pos,
                                         gchar c);
extern
GString* g_string_insert_unichar (GString *string,
                                         gssize pos,
                                         gunichar wc);
extern
GString* g_string_overwrite (GString *string,
                                         gsize pos,
                                         const gchar *val);
extern
GString* g_string_overwrite_len (GString *string,
                                         gsize pos,
                                         const gchar *val,
                                         gssize len);
extern
GString* g_string_erase (GString *string,
                                         gssize pos,
                                         gssize len);
extern
GString* g_string_ascii_down (GString *string);
extern
GString* g_string_ascii_up (GString *string);
extern
void g_string_vprintf (GString *string,
                                         const gchar *format,
                                         va_list args)
                                         __attribute__((__format__ (__printf__, 2, 0)));
extern
void g_string_printf (GString *string,
                                         const gchar *format,
                                         ...) __attribute__((__format__ (__printf__, 2, 3)));
extern
void g_string_append_vprintf (GString *string,
                                         const gchar *format,
                                         va_list args)
                                         __attribute__((__format__ (__printf__, 2, 0)));
extern
void g_string_append_printf (GString *string,
                                         const gchar *format,
                                         ...) __attribute__((__format__ (__printf__, 2, 3)));
extern
GString* g_string_append_uri_escaped (GString *string,
                                          const gchar *unescaped,
                                          const gchar *reserved_chars_allowed,
                                          gboolean allow_utf8);



static inline GString*
g_string_append_c_inline (GString *gstring,
                          gchar c)
{
  if (gstring->len + 1 < gstring->allocated_len)
    {
      gstring->str[gstring->len++] = c;
      gstring->str[gstring->len] = 0;
    }
  else
    g_string_insert_c (gstring, -1, c);
  return gstring;
}




__attribute__((__deprecated__)) extern
GString *g_string_down (GString *string);
__attribute__((__deprecated__)) extern
GString *g_string_up (GString *string);
# 35 "/usr/include/glib-2.0/glib/giochannel.h" 2






typedef struct _GIOChannel GIOChannel;
typedef struct _GIOFuncs GIOFuncs;

typedef enum
{
  G_IO_ERROR_NONE,
  G_IO_ERROR_AGAIN,
  G_IO_ERROR_INVAL,
  G_IO_ERROR_UNKNOWN
} GIOError;



typedef enum
{

  G_IO_CHANNEL_ERROR_FBIG,
  G_IO_CHANNEL_ERROR_INVAL,
  G_IO_CHANNEL_ERROR_IO,
  G_IO_CHANNEL_ERROR_ISDIR,
  G_IO_CHANNEL_ERROR_NOSPC,
  G_IO_CHANNEL_ERROR_NXIO,
  G_IO_CHANNEL_ERROR_OVERFLOW,
  G_IO_CHANNEL_ERROR_PIPE,

  G_IO_CHANNEL_ERROR_FAILED
} GIOChannelError;

typedef enum
{
  G_IO_STATUS_ERROR,
  G_IO_STATUS_NORMAL,
  G_IO_STATUS_EOF,
  G_IO_STATUS_AGAIN
} GIOStatus;

typedef enum
{
  G_SEEK_CUR,
  G_SEEK_SET,
  G_SEEK_END
} GSeekType;

typedef enum
{
  G_IO_FLAG_APPEND = 1 << 0,
  G_IO_FLAG_NONBLOCK = 1 << 1,
  G_IO_FLAG_IS_READABLE = 1 << 2,
  G_IO_FLAG_IS_WRITABLE = 1 << 3,
  G_IO_FLAG_IS_WRITEABLE = 1 << 3,
  G_IO_FLAG_IS_SEEKABLE = 1 << 4,
  G_IO_FLAG_MASK = (1 << 5) - 1,
  G_IO_FLAG_GET_MASK = G_IO_FLAG_MASK,
  G_IO_FLAG_SET_MASK = G_IO_FLAG_APPEND | G_IO_FLAG_NONBLOCK
} GIOFlags;

struct _GIOChannel
{

  gint ref_count;
  GIOFuncs *funcs;

  gchar *encoding;
  GIConv read_cd;
  GIConv write_cd;
  gchar *line_term;
  guint line_term_len;

  gsize buf_size;
  GString *read_buf;
  GString *encoded_read_buf;
  GString *write_buf;
  gchar partial_write_buf[6];



  guint use_buffer : 1;
  guint do_encode : 1;
  guint close_on_unref : 1;
  guint is_readable : 1;
  guint is_writeable : 1;
  guint is_seekable : 1;

  gpointer reserved1;
  gpointer reserved2;
};

typedef gboolean (*GIOFunc) (GIOChannel *source,
        GIOCondition condition,
        gpointer data);
struct _GIOFuncs
{
  GIOStatus (*io_read) (GIOChannel *channel,
             gchar *buf,
      gsize count,
      gsize *bytes_read,
      GError **err);
  GIOStatus (*io_write) (GIOChannel *channel,
      const gchar *buf,
      gsize count,
      gsize *bytes_written,
      GError **err);
  GIOStatus (*io_seek) (GIOChannel *channel,
      gint64 offset,
      GSeekType type,
      GError **err);
  GIOStatus (*io_close) (GIOChannel *channel,
      GError **err);
  GSource* (*io_create_watch) (GIOChannel *channel,
      GIOCondition condition);
  void (*io_free) (GIOChannel *channel);
  GIOStatus (*io_set_flags) (GIOChannel *channel,
                                  GIOFlags flags,
      GError **err);
  GIOFlags (*io_get_flags) (GIOChannel *channel);
};

extern
void g_io_channel_init (GIOChannel *channel);
extern
GIOChannel *g_io_channel_ref (GIOChannel *channel);
extern
void g_io_channel_unref (GIOChannel *channel);

__attribute__((__deprecated__)) extern
GIOError g_io_channel_read (GIOChannel *channel,
                                 gchar *buf,
                                 gsize count,
                                 gsize *bytes_read);

__attribute__((__deprecated__)) extern
GIOError g_io_channel_write (GIOChannel *channel,
                                 const gchar *buf,
                                 gsize count,
                                 gsize *bytes_written);

__attribute__((__deprecated__)) extern
GIOError g_io_channel_seek (GIOChannel *channel,
                                 gint64 offset,
                                 GSeekType type);

__attribute__((__deprecated__)) extern
void g_io_channel_close (GIOChannel *channel);

extern
GIOStatus g_io_channel_shutdown (GIOChannel *channel,
     gboolean flush,
     GError **err);
extern
guint g_io_add_watch_full (GIOChannel *channel,
     gint priority,
     GIOCondition condition,
     GIOFunc func,
     gpointer user_data,
     GDestroyNotify notify);
extern
GSource * g_io_create_watch (GIOChannel *channel,
     GIOCondition condition);
extern
guint g_io_add_watch (GIOChannel *channel,
     GIOCondition condition,
     GIOFunc func,
     gpointer user_data);




extern
void g_io_channel_set_buffer_size (GIOChannel *channel,
        gsize size);
extern
gsize g_io_channel_get_buffer_size (GIOChannel *channel);
extern
GIOCondition g_io_channel_get_buffer_condition (GIOChannel *channel);
extern
GIOStatus g_io_channel_set_flags (GIOChannel *channel,
        GIOFlags flags,
        GError **error);
extern
GIOFlags g_io_channel_get_flags (GIOChannel *channel);
extern
void g_io_channel_set_line_term (GIOChannel *channel,
        const gchar *line_term,
        gint length);
extern
const gchar * g_io_channel_get_line_term (GIOChannel *channel,
        gint *length);
extern
void g_io_channel_set_buffered (GIOChannel *channel,
        gboolean buffered);
extern
gboolean g_io_channel_get_buffered (GIOChannel *channel);
extern
GIOStatus g_io_channel_set_encoding (GIOChannel *channel,
        const gchar *encoding,
        GError **error);
extern
const gchar * g_io_channel_get_encoding (GIOChannel *channel);
extern
void g_io_channel_set_close_on_unref (GIOChannel *channel,
        gboolean do_close);
extern
gboolean g_io_channel_get_close_on_unref (GIOChannel *channel);


extern
GIOStatus g_io_channel_flush (GIOChannel *channel,
        GError **error);
extern
GIOStatus g_io_channel_read_line (GIOChannel *channel,
        gchar **str_return,
        gsize *length,
        gsize *terminator_pos,
        GError **error);
extern
GIOStatus g_io_channel_read_line_string (GIOChannel *channel,
        GString *buffer,
        gsize *terminator_pos,
        GError **error);
extern
GIOStatus g_io_channel_read_to_end (GIOChannel *channel,
        gchar **str_return,
        gsize *length,
        GError **error);
extern
GIOStatus g_io_channel_read_chars (GIOChannel *channel,
        gchar *buf,
        gsize count,
        gsize *bytes_read,
        GError **error);
extern
GIOStatus g_io_channel_read_unichar (GIOChannel *channel,
        gunichar *thechar,
        GError **error);
extern
GIOStatus g_io_channel_write_chars (GIOChannel *channel,
        const gchar *buf,
        gssize count,
        gsize *bytes_written,
        GError **error);
extern
GIOStatus g_io_channel_write_unichar (GIOChannel *channel,
        gunichar thechar,
        GError **error);
extern
GIOStatus g_io_channel_seek_position (GIOChannel *channel,
        gint64 offset,
        GSeekType type,
        GError **error);
extern
GIOChannel* g_io_channel_new_file (const gchar *filename,
        const gchar *mode,
        GError **error);



extern
GQuark g_io_channel_error_quark (void);
extern
GIOChannelError g_io_channel_error_from_errno (gint en);
# 320 "/usr/include/glib-2.0/glib/giochannel.h"
extern
GIOChannel* g_io_channel_unix_new (int fd);
extern
gint g_io_channel_unix_get_fd (GIOChannel *channel);



extern GSourceFuncs g_io_watch_funcs;
# 55 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/gkeyfile.h" 1
# 33 "/usr/include/glib-2.0/glib/gkeyfile.h"
typedef enum
{
  G_KEY_FILE_ERROR_UNKNOWN_ENCODING,
  G_KEY_FILE_ERROR_PARSE,
  G_KEY_FILE_ERROR_NOT_FOUND,
  G_KEY_FILE_ERROR_KEY_NOT_FOUND,
  G_KEY_FILE_ERROR_GROUP_NOT_FOUND,
  G_KEY_FILE_ERROR_INVALID_VALUE
} GKeyFileError;



extern
GQuark g_key_file_error_quark (void);

typedef struct _GKeyFile GKeyFile;

typedef enum
{
  G_KEY_FILE_NONE = 0,
  G_KEY_FILE_KEEP_COMMENTS = 1 << 0,
  G_KEY_FILE_KEEP_TRANSLATIONS = 1 << 1
} GKeyFileFlags;

extern
GKeyFile *g_key_file_new (void);
extern
GKeyFile *g_key_file_ref (GKeyFile *key_file);
extern
void g_key_file_unref (GKeyFile *key_file);
extern
void g_key_file_free (GKeyFile *key_file);
extern
void g_key_file_set_list_separator (GKeyFile *key_file,
          gchar separator);
extern
gboolean g_key_file_load_from_file (GKeyFile *key_file,
          const gchar *file,
          GKeyFileFlags flags,
          GError **error);
extern
gboolean g_key_file_load_from_data (GKeyFile *key_file,
          const gchar *data,
          gsize length,
          GKeyFileFlags flags,
          GError **error);
extern
gboolean g_key_file_load_from_dirs (GKeyFile *key_file,
          const gchar *file,
          const gchar **search_dirs,
          gchar **full_path,
          GKeyFileFlags flags,
          GError **error);
extern
gboolean g_key_file_load_from_data_dirs (GKeyFile *key_file,
          const gchar *file,
          gchar **full_path,
          GKeyFileFlags flags,
          GError **error);
extern
gchar *g_key_file_to_data (GKeyFile *key_file,
          gsize *length,
          GError **error) __attribute__((__malloc__));
extern
gboolean g_key_file_save_to_file (GKeyFile *key_file,
                                             const gchar *filename,
                                             GError **error);
extern
gchar *g_key_file_get_start_group (GKeyFile *key_file) __attribute__((__malloc__));
extern
gchar **g_key_file_get_groups (GKeyFile *key_file,
          gsize *length) __attribute__((__malloc__));
extern
gchar **g_key_file_get_keys (GKeyFile *key_file,
          const gchar *group_name,
          gsize *length,
          GError **error) __attribute__((__malloc__));
extern
gboolean g_key_file_has_group (GKeyFile *key_file,
          const gchar *group_name);
extern
gboolean g_key_file_has_key (GKeyFile *key_file,
          const gchar *group_name,
          const gchar *key,
          GError **error);
extern
gchar *g_key_file_get_value (GKeyFile *key_file,
          const gchar *group_name,
          const gchar *key,
          GError **error) __attribute__((__malloc__));
extern
void g_key_file_set_value (GKeyFile *key_file,
          const gchar *group_name,
          const gchar *key,
          const gchar *value);
extern
gchar *g_key_file_get_string (GKeyFile *key_file,
          const gchar *group_name,
          const gchar *key,
          GError **error) __attribute__((__malloc__));
extern
void g_key_file_set_string (GKeyFile *key_file,
          const gchar *group_name,
          const gchar *key,
          const gchar *string);
extern
gchar *g_key_file_get_locale_string (GKeyFile *key_file,
          const gchar *group_name,
          const gchar *key,
          const gchar *locale,
          GError **error) __attribute__((__malloc__));
extern
void g_key_file_set_locale_string (GKeyFile *key_file,
          const gchar *group_name,
          const gchar *key,
          const gchar *locale,
          const gchar *string);
extern
gboolean g_key_file_get_boolean (GKeyFile *key_file,
          const gchar *group_name,
          const gchar *key,
          GError **error);
extern
void g_key_file_set_boolean (GKeyFile *key_file,
          const gchar *group_name,
          const gchar *key,
          gboolean value);
extern
gint g_key_file_get_integer (GKeyFile *key_file,
          const gchar *group_name,
          const gchar *key,
          GError **error);
extern
void g_key_file_set_integer (GKeyFile *key_file,
          const gchar *group_name,
          const gchar *key,
          gint value);
extern
gint64 g_key_file_get_int64 (GKeyFile *key_file,
          const gchar *group_name,
          const gchar *key,
          GError **error);
extern
void g_key_file_set_int64 (GKeyFile *key_file,
          const gchar *group_name,
          const gchar *key,
          gint64 value);
extern
guint64 g_key_file_get_uint64 (GKeyFile *key_file,
          const gchar *group_name,
          const gchar *key,
          GError **error);
extern
void g_key_file_set_uint64 (GKeyFile *key_file,
          const gchar *group_name,
          const gchar *key,
          guint64 value);
extern
gdouble g_key_file_get_double (GKeyFile *key_file,
                                             const gchar *group_name,
                                             const gchar *key,
                                             GError **error);
extern
void g_key_file_set_double (GKeyFile *key_file,
                                             const gchar *group_name,
                                             const gchar *key,
                                             gdouble value);
extern
gchar **g_key_file_get_string_list (GKeyFile *key_file,
          const gchar *group_name,
          const gchar *key,
          gsize *length,
          GError **error) __attribute__((__malloc__));
extern
void g_key_file_set_string_list (GKeyFile *key_file,
          const gchar *group_name,
          const gchar *key,
          const gchar * const list[],
          gsize length);
extern
gchar **g_key_file_get_locale_string_list (GKeyFile *key_file,
          const gchar *group_name,
          const gchar *key,
          const gchar *locale,
          gsize *length,
          GError **error) __attribute__((__malloc__));
extern
void g_key_file_set_locale_string_list (GKeyFile *key_file,
          const gchar *group_name,
          const gchar *key,
          const gchar *locale,
          const gchar * const list[],
          gsize length);
extern
gboolean *g_key_file_get_boolean_list (GKeyFile *key_file,
          const gchar *group_name,
          const gchar *key,
          gsize *length,
          GError **error) __attribute__((__malloc__));
extern
void g_key_file_set_boolean_list (GKeyFile *key_file,
          const gchar *group_name,
          const gchar *key,
          gboolean list[],
          gsize length);
extern
gint *g_key_file_get_integer_list (GKeyFile *key_file,
          const gchar *group_name,
          const gchar *key,
          gsize *length,
          GError **error) __attribute__((__malloc__));
extern
void g_key_file_set_double_list (GKeyFile *key_file,
                                             const gchar *group_name,
                                             const gchar *key,
                                             gdouble list[],
                                             gsize length);
extern
gdouble *g_key_file_get_double_list (GKeyFile *key_file,
                                             const gchar *group_name,
                                             const gchar *key,
                                             gsize *length,
                                             GError **error) __attribute__((__malloc__));
extern
void g_key_file_set_integer_list (GKeyFile *key_file,
          const gchar *group_name,
          const gchar *key,
          gint list[],
          gsize length);
extern
gboolean g_key_file_set_comment (GKeyFile *key_file,
                                             const gchar *group_name,
                                             const gchar *key,
                                             const gchar *comment,
                                             GError **error);
extern
gchar *g_key_file_get_comment (GKeyFile *key_file,
                                             const gchar *group_name,
                                             const gchar *key,
                                             GError **error) __attribute__((__malloc__));

extern
gboolean g_key_file_remove_comment (GKeyFile *key_file,
                                             const gchar *group_name,
                                             const gchar *key,
          GError **error);
extern
gboolean g_key_file_remove_key (GKeyFile *key_file,
          const gchar *group_name,
          const gchar *key,
          GError **error);
extern
gboolean g_key_file_remove_group (GKeyFile *key_file,
          const gchar *group_name,
          GError **error);
# 56 "/usr/include/glib-2.0/glib.h" 2



# 1 "/usr/include/glib-2.0/glib/gmappedfile.h" 1
# 32 "/usr/include/glib-2.0/glib/gmappedfile.h"
typedef struct _GMappedFile GMappedFile;

extern
GMappedFile *g_mapped_file_new (const gchar *filename,
             gboolean writable,
             GError **error) __attribute__((__malloc__));
extern
GMappedFile *g_mapped_file_new_from_fd (gint fd,
      gboolean writable,
      GError **error) __attribute__((__malloc__));
extern
gsize g_mapped_file_get_length (GMappedFile *file);
extern
gchar *g_mapped_file_get_contents (GMappedFile *file);
extern
GBytes * g_mapped_file_get_bytes (GMappedFile *file);
extern
GMappedFile *g_mapped_file_ref (GMappedFile *file);
extern
void g_mapped_file_unref (GMappedFile *file);

__attribute__((__deprecated__)) extern
void g_mapped_file_free (GMappedFile *file);
# 60 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/gmarkup.h" 1
# 50 "/usr/include/glib-2.0/glib/gmarkup.h"
typedef enum
{
  G_MARKUP_ERROR_BAD_UTF8,
  G_MARKUP_ERROR_EMPTY,
  G_MARKUP_ERROR_PARSE,



  G_MARKUP_ERROR_UNKNOWN_ELEMENT,
  G_MARKUP_ERROR_UNKNOWN_ATTRIBUTE,
  G_MARKUP_ERROR_INVALID_CONTENT,
  G_MARKUP_ERROR_MISSING_ATTRIBUTE
} GMarkupError;
# 73 "/usr/include/glib-2.0/glib/gmarkup.h"
extern
GQuark g_markup_error_quark (void);
# 96 "/usr/include/glib-2.0/glib/gmarkup.h"
typedef enum
{
  G_MARKUP_DO_NOT_USE_THIS_UNSUPPORTED_FLAG = 1 << 0,
  G_MARKUP_TREAT_CDATA_AS_TEXT = 1 << 1,
  G_MARKUP_PREFIX_ERROR_POSITION = 1 << 2,
  G_MARKUP_IGNORE_QUALIFIED = 1 << 3
} GMarkupParseFlags;
# 113 "/usr/include/glib-2.0/glib/gmarkup.h"
typedef struct _GMarkupParseContext GMarkupParseContext;
typedef struct _GMarkupParser GMarkupParser;
# 144 "/usr/include/glib-2.0/glib/gmarkup.h"
struct _GMarkupParser
{

  void (*start_element) (GMarkupParseContext *context,
                          const gchar *element_name,
                          const gchar **attribute_names,
                          const gchar **attribute_values,
                          gpointer user_data,
                          GError **error);


  void (*end_element) (GMarkupParseContext *context,
                          const gchar *element_name,
                          gpointer user_data,
                          GError **error);



  void (*text) (GMarkupParseContext *context,
                          const gchar *text,
                          gsize text_len,
                          gpointer user_data,
                          GError **error);






  void (*passthrough) (GMarkupParseContext *context,
                          const gchar *passthrough_text,
                          gsize text_len,
                          gpointer user_data,
                          GError **error);




  void (*error) (GMarkupParseContext *context,
                          GError *error,
                          gpointer user_data);
};

extern
GMarkupParseContext *g_markup_parse_context_new (const GMarkupParser *parser,
                                                   GMarkupParseFlags flags,
                                                   gpointer user_data,
                                                   GDestroyNotify user_data_dnotify);
extern
GMarkupParseContext *g_markup_parse_context_ref (GMarkupParseContext *context);
extern
void g_markup_parse_context_unref (GMarkupParseContext *context);
extern
void g_markup_parse_context_free (GMarkupParseContext *context);
extern
gboolean g_markup_parse_context_parse (GMarkupParseContext *context,
                                                   const gchar *text,
                                                   gssize text_len,
                                                   GError **error);
extern
void g_markup_parse_context_push (GMarkupParseContext *context,
                                                   const GMarkupParser *parser,
                                                   gpointer user_data);
extern
gpointer g_markup_parse_context_pop (GMarkupParseContext *context);

extern
gboolean g_markup_parse_context_end_parse (GMarkupParseContext *context,
                                                       GError **error);
extern
const gchar * g_markup_parse_context_get_element (GMarkupParseContext *context);
extern
const GSList * g_markup_parse_context_get_element_stack (GMarkupParseContext *context);


extern
void g_markup_parse_context_get_position (GMarkupParseContext *context,
                                                          gint *line_number,
                                                          gint *char_number);
extern
gpointer g_markup_parse_context_get_user_data (GMarkupParseContext *context);


extern
gchar* g_markup_escape_text (const gchar *text,
                             gssize length);

extern
gchar *g_markup_printf_escaped (const char *format,
    ...) __attribute__((__format__ (__printf__, 1, 2)));
extern
gchar *g_markup_vprintf_escaped (const char *format,
     va_list args) __attribute__((__format__ (__printf__, 1, 0)));

typedef enum
{
  G_MARKUP_COLLECT_INVALID,
  G_MARKUP_COLLECT_STRING,
  G_MARKUP_COLLECT_STRDUP,
  G_MARKUP_COLLECT_BOOLEAN,
  G_MARKUP_COLLECT_TRISTATE,

  G_MARKUP_COLLECT_OPTIONAL = (1 << 16)
} GMarkupCollectType;



extern
gboolean g_markup_collect_attributes (const gchar *element_name,
                                        const gchar **attribute_names,
                                        const gchar **attribute_values,
                                        GError **error,
                                        GMarkupCollectType first_type,
                                        const gchar *first_attr,
                                        ...);
# 61 "/usr/include/glib-2.0/glib.h" 2

# 1 "/usr/include/glib-2.0/glib/gmessages.h" 1
# 40 "/usr/include/glib-2.0/glib/gmessages.h" 3






extern
gsize g_printf_string_upper_bound (const gchar* format,
         va_list args) __attribute__((__format__ (__printf__, 1, 0)));
# 57 "/usr/include/glib-2.0/glib/gmessages.h" 3
typedef enum
{

  G_LOG_FLAG_RECURSION = 1 << 0,
  G_LOG_FLAG_FATAL = 1 << 1,


  G_LOG_LEVEL_ERROR = 1 << 2,
  G_LOG_LEVEL_CRITICAL = 1 << 3,
  G_LOG_LEVEL_WARNING = 1 << 4,
  G_LOG_LEVEL_MESSAGE = 1 << 5,
  G_LOG_LEVEL_INFO = 1 << 6,
  G_LOG_LEVEL_DEBUG = 1 << 7,

  G_LOG_LEVEL_MASK = ~(G_LOG_FLAG_RECURSION | G_LOG_FLAG_FATAL)
} GLogLevelFlags;




typedef void (*GLogFunc) (const gchar *log_domain,
                                                 GLogLevelFlags log_level,
                                                 const gchar *message,
                                                 gpointer user_data);



extern
guint g_log_set_handler (const gchar *log_domain,
                                         GLogLevelFlags log_levels,
                                         GLogFunc log_func,
                                         gpointer user_data);
extern
void g_log_remove_handler (const gchar *log_domain,
                                         guint handler_id);
extern
void g_log_default_handler (const gchar *log_domain,
                                         GLogLevelFlags log_level,
                                         const gchar *message,
                                         gpointer unused_data);
extern
GLogFunc g_log_set_default_handler (GLogFunc log_func,
        gpointer user_data);
extern
void g_log (const gchar *log_domain,
                                         GLogLevelFlags log_level,
                                         const gchar *format,
                                         ...) __attribute__((__format__ (__printf__, 3, 4)));
extern
void g_logv (const gchar *log_domain,
                                         GLogLevelFlags log_level,
                                         const gchar *format,
                                         va_list args) __attribute__((__format__ (__printf__, 3, 0)));
extern
GLogLevelFlags g_log_set_fatal_mask (const gchar *log_domain,
                                         GLogLevelFlags fatal_mask);
extern
GLogLevelFlags g_log_set_always_fatal (GLogLevelFlags fatal_mask);


void _g_log_fallback_handler (const gchar *log_domain,
       GLogLevelFlags log_level,
       const gchar *message,
       gpointer unused_data);


extern
void g_return_if_fail_warning (const char *log_domain,
          const char *pretty_function,
          const char *expression) __attribute__((analyzer_noreturn));
extern
void g_warn_message (const char *domain,
                               const char *file,
                               int line,
                               const char *func,
                               const char *warnexpr) __attribute__((analyzer_noreturn));
__attribute__((__deprecated__)) extern
void g_assert_warning (const char *log_domain,
          const char *file,
          const int line,
                 const char *pretty_function,
                 const char *expression) __attribute__((__noreturn__));
# 195 "/usr/include/glib-2.0/glib/gmessages.h" 3
static void g_error (const gchar *format, ...) __attribute__((analyzer_noreturn));
static void g_critical (const gchar *format, ...) __attribute__((analyzer_noreturn));

static void
g_error (const gchar *format,
         ...)
{
  va_list args;
  __builtin_va_start(args, format);
  g_logv ("Gimp-Config", G_LOG_LEVEL_ERROR, format, args);
  __builtin_va_end(args);

  for(;;) ;
}
static void
g_message (const gchar *format,
           ...)
{
  va_list args;
  __builtin_va_start(args, format);
  g_logv ("Gimp-Config", G_LOG_LEVEL_MESSAGE, format, args);
  __builtin_va_end(args);
}
static void
g_critical (const gchar *format,
            ...)
{
  va_list args;
  __builtin_va_start(args, format);
  g_logv ("Gimp-Config", G_LOG_LEVEL_CRITICAL, format, args);
  __builtin_va_end(args);
}
static void
g_warning (const gchar *format,
           ...)
{
  va_list args;
  __builtin_va_start(args, format);
  g_logv ("Gimp-Config", G_LOG_LEVEL_WARNING, format, args);
  __builtin_va_end(args);
}
static void
g_info (const gchar *format,
        ...)
{
  va_list args;
  __builtin_va_start(args, format);
  g_logv ("Gimp-Config", G_LOG_LEVEL_INFO, format, args);
  __builtin_va_end(args);
}
static void
g_debug (const gchar *format,
         ...)
{
  va_list args;
  __builtin_va_start(args, format);
  g_logv ("Gimp-Config", G_LOG_LEVEL_DEBUG, format, args);
  __builtin_va_end(args);
}
# 263 "/usr/include/glib-2.0/glib/gmessages.h" 3
typedef void (*GPrintFunc) (const gchar *string);
extern
void g_print (const gchar *format,
                                         ...) __attribute__((__format__ (__printf__, 1, 2)));
extern
GPrintFunc g_set_print_handler (GPrintFunc func);
extern
void g_printerr (const gchar *format,
                                         ...) __attribute__((__format__ (__printf__, 1, 2)));
extern
GPrintFunc g_set_printerr_handler (GPrintFunc func);
# 63 "/usr/include/glib-2.0/glib.h" 2

# 1 "/usr/include/glib-2.0/glib/goption.h" 1
# 38 "/usr/include/glib-2.0/glib/goption.h"
typedef struct _GOptionContext GOptionContext;
# 51 "/usr/include/glib-2.0/glib/goption.h"
typedef struct _GOptionGroup GOptionGroup;
typedef struct _GOptionEntry GOptionEntry;
# 81 "/usr/include/glib-2.0/glib/goption.h"
typedef enum
{
  G_OPTION_FLAG_NONE = 0,
  G_OPTION_FLAG_HIDDEN = 1 << 0,
  G_OPTION_FLAG_IN_MAIN = 1 << 1,
  G_OPTION_FLAG_REVERSE = 1 << 2,
  G_OPTION_FLAG_NO_ARG = 1 << 3,
  G_OPTION_FLAG_FILENAME = 1 << 4,
  G_OPTION_FLAG_OPTIONAL_ARG = 1 << 5,
  G_OPTION_FLAG_NOALIAS = 1 << 6
} GOptionFlags;
# 118 "/usr/include/glib-2.0/glib/goption.h"
typedef enum
{
  G_OPTION_ARG_NONE,
  G_OPTION_ARG_STRING,
  G_OPTION_ARG_INT,
  G_OPTION_ARG_CALLBACK,
  G_OPTION_ARG_FILENAME,
  G_OPTION_ARG_STRING_ARRAY,
  G_OPTION_ARG_FILENAME_ARRAY,
  G_OPTION_ARG_DOUBLE,
  G_OPTION_ARG_INT64
} GOptionArg;
# 148 "/usr/include/glib-2.0/glib/goption.h"
typedef gboolean (*GOptionArgFunc) (const gchar *option_name,
        const gchar *value,
        gpointer data,
        GError **error);
# 166 "/usr/include/glib-2.0/glib/goption.h"
typedef gboolean (*GOptionParseFunc) (GOptionContext *context,
          GOptionGroup *group,
          gpointer data,
          GError **error);
# 181 "/usr/include/glib-2.0/glib/goption.h"
typedef void (*GOptionErrorFunc) (GOptionContext *context,
      GOptionGroup *group,
      gpointer data,
      GError **error);
# 205 "/usr/include/glib-2.0/glib/goption.h"
typedef enum
{
  G_OPTION_ERROR_UNKNOWN_OPTION,
  G_OPTION_ERROR_BAD_VALUE,
  G_OPTION_ERROR_FAILED
} GOptionError;

extern
GQuark g_option_error_quark (void);
# 257 "/usr/include/glib-2.0/glib/goption.h"
struct _GOptionEntry
{
  const gchar *long_name;
  gchar short_name;
  gint flags;

  GOptionArg arg;
  gpointer arg_data;

  const gchar *description;
  const gchar *arg_description;
};
# 288 "/usr/include/glib-2.0/glib/goption.h"
extern
GOptionContext *g_option_context_new (const gchar *parameter_string);
extern
void g_option_context_set_summary (GOptionContext *context,
                                                   const gchar *summary);
extern
const gchar * g_option_context_get_summary (GOptionContext *context);
extern
void g_option_context_set_description (GOptionContext *context,
                                                   const gchar *description);
extern
const gchar * g_option_context_get_description (GOptionContext *context);
extern
void g_option_context_free (GOptionContext *context);
extern
void g_option_context_set_help_enabled (GOptionContext *context,
         gboolean help_enabled);
extern
gboolean g_option_context_get_help_enabled (GOptionContext *context);
extern
void g_option_context_set_ignore_unknown_options (GOptionContext *context,
            gboolean ignore_unknown);
extern
gboolean g_option_context_get_ignore_unknown_options (GOptionContext *context);

extern
void g_option_context_add_main_entries (GOptionContext *context,
         const GOptionEntry *entries,
         const gchar *translation_domain);
extern
gboolean g_option_context_parse (GOptionContext *context,
         gint *argc,
         gchar ***argv,
         GError **error);
extern
gboolean g_option_context_parse_strv (GOptionContext *context,
                                                   gchar ***arguments,
                                                   GError **error);
extern
void g_option_context_set_translate_func (GOptionContext *context,
           GTranslateFunc func,
           gpointer data,
           GDestroyNotify destroy_notify);
extern
void g_option_context_set_translation_domain (GOptionContext *context,
        const gchar *domain);

extern
void g_option_context_add_group (GOptionContext *context,
       GOptionGroup *group);
extern
void g_option_context_set_main_group (GOptionContext *context,
            GOptionGroup *group);
extern
GOptionGroup *g_option_context_get_main_group (GOptionContext *context);
extern
gchar *g_option_context_get_help (GOptionContext *context,
                                               gboolean main_help,
                                               GOptionGroup *group);

extern
GOptionGroup *g_option_group_new (const gchar *name,
           const gchar *description,
           const gchar *help_description,
           gpointer user_data,
           GDestroyNotify destroy);
extern
void g_option_group_set_parse_hooks (GOptionGroup *group,
           GOptionParseFunc pre_parse_func,
           GOptionParseFunc post_parse_func);
extern
void g_option_group_set_error_hook (GOptionGroup *group,
           GOptionErrorFunc error_func);
extern
void g_option_group_free (GOptionGroup *group);
extern
void g_option_group_add_entries (GOptionGroup *group,
           const GOptionEntry *entries);
extern
void g_option_group_set_translate_func (GOptionGroup *group,
           GTranslateFunc func,
           gpointer data,
           GDestroyNotify destroy_notify);
extern
void g_option_group_set_translation_domain (GOptionGroup *group,
           const gchar *domain);
# 65 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/gpattern.h" 1
# 30 "/usr/include/glib-2.0/glib/gpattern.h"
typedef struct _GPatternSpec GPatternSpec;

extern
GPatternSpec* g_pattern_spec_new (const gchar *pattern);
extern
void g_pattern_spec_free (GPatternSpec *pspec);
extern
gboolean g_pattern_spec_equal (GPatternSpec *pspec1,
     GPatternSpec *pspec2);
extern
gboolean g_pattern_match (GPatternSpec *pspec,
     guint string_length,
     const gchar *string,
     const gchar *string_reversed);
extern
gboolean g_pattern_match_string (GPatternSpec *pspec,
     const gchar *string);
extern
gboolean g_pattern_match_simple (const gchar *pattern,
     const gchar *string);
# 66 "/usr/include/glib-2.0/glib.h" 2

# 1 "/usr/include/glib-2.0/glib/gprimes.h" 1
# 45 "/usr/include/glib-2.0/glib/gprimes.h"
extern
guint g_spaced_primes_closest (guint num) __attribute__((__const__));
# 68 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/gqsort.h" 1
# 36 "/usr/include/glib-2.0/glib/gqsort.h"
extern
void g_qsort_with_data (gconstpointer pbase,
   gint total_elems,
   gsize size,
   GCompareDataFunc compare_func,
   gpointer user_data);
# 69 "/usr/include/glib-2.0/glib.h" 2

# 1 "/usr/include/glib-2.0/glib/gqueue.h" 1
# 36 "/usr/include/glib-2.0/glib/gqueue.h"
typedef struct _GQueue GQueue;
# 47 "/usr/include/glib-2.0/glib/gqueue.h"
struct _GQueue
{
  GList *head;
  GList *tail;
  guint length;
};
# 72 "/usr/include/glib-2.0/glib/gqueue.h"
extern
GQueue* g_queue_new (void);
extern
void g_queue_free (GQueue *queue);
extern
void g_queue_free_full (GQueue *queue,
    GDestroyNotify free_func);
extern
void g_queue_init (GQueue *queue);
extern
void g_queue_clear (GQueue *queue);
extern
gboolean g_queue_is_empty (GQueue *queue);
extern
guint g_queue_get_length (GQueue *queue);
extern
void g_queue_reverse (GQueue *queue);
extern
GQueue * g_queue_copy (GQueue *queue);
extern
void g_queue_foreach (GQueue *queue,
                                 GFunc func,
                                 gpointer user_data);
extern
GList * g_queue_find (GQueue *queue,
                                 gconstpointer data);
extern
GList * g_queue_find_custom (GQueue *queue,
                                 gconstpointer data,
                                 GCompareFunc func);
extern
void g_queue_sort (GQueue *queue,
                                 GCompareDataFunc compare_func,
                                 gpointer user_data);

extern
void g_queue_push_head (GQueue *queue,
                                 gpointer data);
extern
void g_queue_push_tail (GQueue *queue,
                                 gpointer data);
extern
void g_queue_push_nth (GQueue *queue,
                                 gpointer data,
                                 gint n);
extern
gpointer g_queue_pop_head (GQueue *queue);
extern
gpointer g_queue_pop_tail (GQueue *queue);
extern
gpointer g_queue_pop_nth (GQueue *queue,
                                 guint n);
extern
gpointer g_queue_peek_head (GQueue *queue);
extern
gpointer g_queue_peek_tail (GQueue *queue);
extern
gpointer g_queue_peek_nth (GQueue *queue,
                                 guint n);
extern
gint g_queue_index (GQueue *queue,
                                 gconstpointer data);
extern
gboolean g_queue_remove (GQueue *queue,
                                 gconstpointer data);
extern
guint g_queue_remove_all (GQueue *queue,
                                 gconstpointer data);
extern
void g_queue_insert_before (GQueue *queue,
                                 GList *sibling,
                                 gpointer data);
extern
void g_queue_insert_after (GQueue *queue,
                                 GList *sibling,
                                 gpointer data);
extern
void g_queue_insert_sorted (GQueue *queue,
                                 gpointer data,
                                 GCompareDataFunc func,
                                 gpointer user_data);

extern
void g_queue_push_head_link (GQueue *queue,
                                 GList *link_);
extern
void g_queue_push_tail_link (GQueue *queue,
                                 GList *link_);
extern
void g_queue_push_nth_link (GQueue *queue,
                                 gint n,
                                 GList *link_);
extern
GList* g_queue_pop_head_link (GQueue *queue);
extern
GList* g_queue_pop_tail_link (GQueue *queue);
extern
GList* g_queue_pop_nth_link (GQueue *queue,
                                 guint n);
extern
GList* g_queue_peek_head_link (GQueue *queue);
extern
GList* g_queue_peek_tail_link (GQueue *queue);
extern
GList* g_queue_peek_nth_link (GQueue *queue,
                                 guint n);
extern
gint g_queue_link_index (GQueue *queue,
                                 GList *link_);
extern
void g_queue_unlink (GQueue *queue,
                                 GList *link_);
extern
void g_queue_delete_link (GQueue *queue,
                                 GList *link_);
# 71 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/grand.h" 1
# 36 "/usr/include/glib-2.0/glib/grand.h"
typedef struct _GRand GRand;
# 47 "/usr/include/glib-2.0/glib/grand.h"
extern
GRand* g_rand_new_with_seed (guint32 seed);
extern
GRand* g_rand_new_with_seed_array (const guint32 *seed,
        guint seed_length);
extern
GRand* g_rand_new (void);
extern
void g_rand_free (GRand *rand_);
extern
GRand* g_rand_copy (GRand *rand_);
extern
void g_rand_set_seed (GRand *rand_,
          guint32 seed);
extern
void g_rand_set_seed_array (GRand *rand_,
          const guint32 *seed,
          guint seed_length);



extern
guint32 g_rand_int (GRand *rand_);
extern
gint32 g_rand_int_range (GRand *rand_,
          gint32 begin,
          gint32 end);
extern
gdouble g_rand_double (GRand *rand_);
extern
gdouble g_rand_double_range (GRand *rand_,
          gdouble begin,
          gdouble end);
extern
void g_random_set_seed (guint32 seed);



extern
guint32 g_random_int (void);
extern
gint32 g_random_int_range (gint32 begin,
          gint32 end);
extern
gdouble g_random_double (void);
extern
gdouble g_random_double_range (gdouble begin,
          gdouble end);
# 72 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/gregex.h" 1
# 141 "/usr/include/glib-2.0/glib/gregex.h"
typedef enum
{
  G_REGEX_ERROR_COMPILE,
  G_REGEX_ERROR_OPTIMIZE,
  G_REGEX_ERROR_REPLACE,
  G_REGEX_ERROR_MATCH,
  G_REGEX_ERROR_INTERNAL,


  G_REGEX_ERROR_STRAY_BACKSLASH = 101,
  G_REGEX_ERROR_MISSING_CONTROL_CHAR = 102,
  G_REGEX_ERROR_UNRECOGNIZED_ESCAPE = 103,
  G_REGEX_ERROR_QUANTIFIERS_OUT_OF_ORDER = 104,
  G_REGEX_ERROR_QUANTIFIER_TOO_BIG = 105,
  G_REGEX_ERROR_UNTERMINATED_CHARACTER_CLASS = 106,
  G_REGEX_ERROR_INVALID_ESCAPE_IN_CHARACTER_CLASS = 107,
  G_REGEX_ERROR_RANGE_OUT_OF_ORDER = 108,
  G_REGEX_ERROR_NOTHING_TO_REPEAT = 109,
  G_REGEX_ERROR_UNRECOGNIZED_CHARACTER = 112,
  G_REGEX_ERROR_POSIX_NAMED_CLASS_OUTSIDE_CLASS = 113,
  G_REGEX_ERROR_UNMATCHED_PARENTHESIS = 114,
  G_REGEX_ERROR_INEXISTENT_SUBPATTERN_REFERENCE = 115,
  G_REGEX_ERROR_UNTERMINATED_COMMENT = 118,
  G_REGEX_ERROR_EXPRESSION_TOO_LARGE = 120,
  G_REGEX_ERROR_MEMORY_ERROR = 121,
  G_REGEX_ERROR_VARIABLE_LENGTH_LOOKBEHIND = 125,
  G_REGEX_ERROR_MALFORMED_CONDITION = 126,
  G_REGEX_ERROR_TOO_MANY_CONDITIONAL_BRANCHES = 127,
  G_REGEX_ERROR_ASSERTION_EXPECTED = 128,
  G_REGEX_ERROR_UNKNOWN_POSIX_CLASS_NAME = 130,
  G_REGEX_ERROR_POSIX_COLLATING_ELEMENTS_NOT_SUPPORTED = 131,
  G_REGEX_ERROR_HEX_CODE_TOO_LARGE = 134,
  G_REGEX_ERROR_INVALID_CONDITION = 135,
  G_REGEX_ERROR_SINGLE_BYTE_MATCH_IN_LOOKBEHIND = 136,
  G_REGEX_ERROR_INFINITE_LOOP = 140,
  G_REGEX_ERROR_MISSING_SUBPATTERN_NAME_TERMINATOR = 142,
  G_REGEX_ERROR_DUPLICATE_SUBPATTERN_NAME = 143,
  G_REGEX_ERROR_MALFORMED_PROPERTY = 146,
  G_REGEX_ERROR_UNKNOWN_PROPERTY = 147,
  G_REGEX_ERROR_SUBPATTERN_NAME_TOO_LONG = 148,
  G_REGEX_ERROR_TOO_MANY_SUBPATTERNS = 149,
  G_REGEX_ERROR_INVALID_OCTAL_VALUE = 151,
  G_REGEX_ERROR_TOO_MANY_BRANCHES_IN_DEFINE = 154,
  G_REGEX_ERROR_DEFINE_REPETION = 155,
  G_REGEX_ERROR_INCONSISTENT_NEWLINE_OPTIONS = 156,
  G_REGEX_ERROR_MISSING_BACK_REFERENCE = 157,
  G_REGEX_ERROR_INVALID_RELATIVE_REFERENCE = 158,
  G_REGEX_ERROR_BACKTRACKING_CONTROL_VERB_ARGUMENT_FORBIDDEN = 159,
  G_REGEX_ERROR_UNKNOWN_BACKTRACKING_CONTROL_VERB = 160,
  G_REGEX_ERROR_NUMBER_TOO_BIG = 161,
  G_REGEX_ERROR_MISSING_SUBPATTERN_NAME = 162,
  G_REGEX_ERROR_MISSING_DIGIT = 163,
  G_REGEX_ERROR_INVALID_DATA_CHARACTER = 164,
  G_REGEX_ERROR_EXTRA_SUBPATTERN_NAME = 165,
  G_REGEX_ERROR_BACKTRACKING_CONTROL_VERB_ARGUMENT_REQUIRED = 166,
  G_REGEX_ERROR_INVALID_CONTROL_CHAR = 168,
  G_REGEX_ERROR_MISSING_NAME = 169,
  G_REGEX_ERROR_NOT_SUPPORTED_IN_CLASS = 171,
  G_REGEX_ERROR_TOO_MANY_FORWARD_REFERENCES = 172,
  G_REGEX_ERROR_NAME_TOO_LONG = 175,
  G_REGEX_ERROR_CHARACTER_VALUE_TOO_LARGE = 176
} GRegexError;
# 215 "/usr/include/glib-2.0/glib/gregex.h"
extern
GQuark g_regex_error_quark (void);
# 297 "/usr/include/glib-2.0/glib/gregex.h"
typedef enum
{
  G_REGEX_CASELESS = 1 << 0,
  G_REGEX_MULTILINE = 1 << 1,
  G_REGEX_DOTALL = 1 << 2,
  G_REGEX_EXTENDED = 1 << 3,
  G_REGEX_ANCHORED = 1 << 4,
  G_REGEX_DOLLAR_ENDONLY = 1 << 5,
  G_REGEX_UNGREEDY = 1 << 9,
  G_REGEX_RAW = 1 << 11,
  G_REGEX_NO_AUTO_CAPTURE = 1 << 12,
  G_REGEX_OPTIMIZE = 1 << 13,
  G_REGEX_FIRSTLINE = 1 << 18,
  G_REGEX_DUPNAMES = 1 << 19,
  G_REGEX_NEWLINE_CR = 1 << 20,
  G_REGEX_NEWLINE_LF = 1 << 21,
  G_REGEX_NEWLINE_CRLF = G_REGEX_NEWLINE_CR | G_REGEX_NEWLINE_LF,
  G_REGEX_NEWLINE_ANYCRLF = G_REGEX_NEWLINE_CR | 1 << 22,
  G_REGEX_BSR_ANYCRLF = 1 << 23,
  G_REGEX_JAVASCRIPT_COMPAT = 1 << 25
} GRegexCompileFlags;
# 387 "/usr/include/glib-2.0/glib/gregex.h"
typedef enum
{
  G_REGEX_MATCH_ANCHORED = 1 << 4,
  G_REGEX_MATCH_NOTBOL = 1 << 7,
  G_REGEX_MATCH_NOTEOL = 1 << 8,
  G_REGEX_MATCH_NOTEMPTY = 1 << 10,
  G_REGEX_MATCH_PARTIAL = 1 << 15,
  G_REGEX_MATCH_NEWLINE_CR = 1 << 20,
  G_REGEX_MATCH_NEWLINE_LF = 1 << 21,
  G_REGEX_MATCH_NEWLINE_CRLF = G_REGEX_MATCH_NEWLINE_CR | G_REGEX_MATCH_NEWLINE_LF,
  G_REGEX_MATCH_NEWLINE_ANY = 1 << 22,
  G_REGEX_MATCH_NEWLINE_ANYCRLF = G_REGEX_MATCH_NEWLINE_CR | G_REGEX_MATCH_NEWLINE_ANY,
  G_REGEX_MATCH_BSR_ANYCRLF = 1 << 23,
  G_REGEX_MATCH_BSR_ANY = 1 << 24,
  G_REGEX_MATCH_PARTIAL_SOFT = G_REGEX_MATCH_PARTIAL,
  G_REGEX_MATCH_PARTIAL_HARD = 1 << 27,
  G_REGEX_MATCH_NOTEMPTY_ATSTART = 1 << 28
} GRegexMatchFlags;
# 414 "/usr/include/glib-2.0/glib/gregex.h"
typedef struct _GRegex GRegex;
# 423 "/usr/include/glib-2.0/glib/gregex.h"
typedef struct _GMatchInfo GMatchInfo;
# 442 "/usr/include/glib-2.0/glib/gregex.h"
typedef gboolean (*GRegexEvalCallback) (const GMatchInfo *match_info,
       GString *result,
       gpointer user_data);


extern
GRegex *g_regex_new (const gchar *pattern,
       GRegexCompileFlags compile_options,
       GRegexMatchFlags match_options,
       GError **error);
extern
GRegex *g_regex_ref (GRegex *regex);
extern
void g_regex_unref (GRegex *regex);
extern
const gchar *g_regex_get_pattern (const GRegex *regex);
extern
gint g_regex_get_max_backref (const GRegex *regex);
extern
gint g_regex_get_capture_count (const GRegex *regex);
extern
gboolean g_regex_get_has_cr_or_lf (const GRegex *regex);
extern
gint g_regex_get_max_lookbehind (const GRegex *regex);
extern
gint g_regex_get_string_number (const GRegex *regex,
       const gchar *name);
extern
gchar *g_regex_escape_string (const gchar *string,
       gint length);
extern
gchar *g_regex_escape_nul (const gchar *string,
       gint length);

extern
GRegexCompileFlags g_regex_get_compile_flags (const GRegex *regex);
extern
GRegexMatchFlags g_regex_get_match_flags (const GRegex *regex);


extern
gboolean g_regex_match_simple (const gchar *pattern,
       const gchar *string,
       GRegexCompileFlags compile_options,
       GRegexMatchFlags match_options);
extern
gboolean g_regex_match (const GRegex *regex,
       const gchar *string,
       GRegexMatchFlags match_options,
       GMatchInfo **match_info);
extern
gboolean g_regex_match_full (const GRegex *regex,
       const gchar *string,
       gssize string_len,
       gint start_position,
       GRegexMatchFlags match_options,
       GMatchInfo **match_info,
       GError **error);
extern
gboolean g_regex_match_all (const GRegex *regex,
       const gchar *string,
       GRegexMatchFlags match_options,
       GMatchInfo **match_info);
extern
gboolean g_regex_match_all_full (const GRegex *regex,
       const gchar *string,
       gssize string_len,
       gint start_position,
       GRegexMatchFlags match_options,
       GMatchInfo **match_info,
       GError **error);


extern
gchar **g_regex_split_simple (const gchar *pattern,
       const gchar *string,
       GRegexCompileFlags compile_options,
       GRegexMatchFlags match_options);
extern
gchar **g_regex_split (const GRegex *regex,
       const gchar *string,
       GRegexMatchFlags match_options);
extern
gchar **g_regex_split_full (const GRegex *regex,
       const gchar *string,
       gssize string_len,
       gint start_position,
       GRegexMatchFlags match_options,
       gint max_tokens,
       GError **error);


extern
gchar *g_regex_replace (const GRegex *regex,
       const gchar *string,
       gssize string_len,
       gint start_position,
       const gchar *replacement,
       GRegexMatchFlags match_options,
       GError **error);
extern
gchar *g_regex_replace_literal (const GRegex *regex,
       const gchar *string,
       gssize string_len,
       gint start_position,
       const gchar *replacement,
       GRegexMatchFlags match_options,
       GError **error);
extern
gchar *g_regex_replace_eval (const GRegex *regex,
       const gchar *string,
       gssize string_len,
       gint start_position,
       GRegexMatchFlags match_options,
       GRegexEvalCallback eval,
       gpointer user_data,
       GError **error);
extern
gboolean g_regex_check_replacement (const gchar *replacement,
       gboolean *has_references,
       GError **error);


extern
GRegex *g_match_info_get_regex (const GMatchInfo *match_info);
extern
const gchar *g_match_info_get_string (const GMatchInfo *match_info);

extern
GMatchInfo *g_match_info_ref (GMatchInfo *match_info);
extern
void g_match_info_unref (GMatchInfo *match_info);
extern
void g_match_info_free (GMatchInfo *match_info);
extern
gboolean g_match_info_next (GMatchInfo *match_info,
       GError **error);
extern
gboolean g_match_info_matches (const GMatchInfo *match_info);
extern
gint g_match_info_get_match_count (const GMatchInfo *match_info);
extern
gboolean g_match_info_is_partial_match (const GMatchInfo *match_info);
extern
gchar *g_match_info_expand_references(const GMatchInfo *match_info,
       const gchar *string_to_expand,
       GError **error);
extern
gchar *g_match_info_fetch (const GMatchInfo *match_info,
       gint match_num);
extern
gboolean g_match_info_fetch_pos (const GMatchInfo *match_info,
       gint match_num,
       gint *start_pos,
       gint *end_pos);
extern
gchar *g_match_info_fetch_named (const GMatchInfo *match_info,
       const gchar *name);
extern
gboolean g_match_info_fetch_named_pos (const GMatchInfo *match_info,
       const gchar *name,
       gint *start_pos,
       gint *end_pos);
extern
gchar **g_match_info_fetch_all (const GMatchInfo *match_info);
# 73 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/gscanner.h" 1
# 37 "/usr/include/glib-2.0/glib/gscanner.h"
typedef struct _GScanner GScanner;
typedef struct _GScannerConfig GScannerConfig;
typedef union _GTokenValue GTokenValue;

typedef void (*GScannerMsgFunc) (GScanner *scanner,
       gchar *message,
       gboolean error);
# 62 "/usr/include/glib-2.0/glib/gscanner.h"
typedef enum
{
  G_ERR_UNKNOWN,
  G_ERR_UNEXP_EOF,
  G_ERR_UNEXP_EOF_IN_STRING,
  G_ERR_UNEXP_EOF_IN_COMMENT,
  G_ERR_NON_DIGIT_IN_CONST,
  G_ERR_DIGIT_RADIX,
  G_ERR_FLOAT_RADIX,
  G_ERR_FLOAT_MALFORMED
} GErrorType;


typedef enum
{
  G_TOKEN_EOF = 0,

  G_TOKEN_LEFT_PAREN = '(',
  G_TOKEN_RIGHT_PAREN = ')',
  G_TOKEN_LEFT_CURLY = '{',
  G_TOKEN_RIGHT_CURLY = '}',
  G_TOKEN_LEFT_BRACE = '[',
  G_TOKEN_RIGHT_BRACE = ']',
  G_TOKEN_EQUAL_SIGN = '=',
  G_TOKEN_COMMA = ',',

  G_TOKEN_NONE = 256,

  G_TOKEN_ERROR,

  G_TOKEN_CHAR,
  G_TOKEN_BINARY,
  G_TOKEN_OCTAL,
  G_TOKEN_INT,
  G_TOKEN_HEX,
  G_TOKEN_FLOAT,
  G_TOKEN_STRING,

  G_TOKEN_SYMBOL,
  G_TOKEN_IDENTIFIER,
  G_TOKEN_IDENTIFIER_NULL,

  G_TOKEN_COMMENT_SINGLE,
  G_TOKEN_COMMENT_MULTI,


  G_TOKEN_LAST
} GTokenType;

union _GTokenValue
{
  gpointer v_symbol;
  gchar *v_identifier;
  gulong v_binary;
  gulong v_octal;
  gulong v_int;
  guint64 v_int64;
  gdouble v_float;
  gulong v_hex;
  gchar *v_string;
  gchar *v_comment;
  guchar v_char;
  guint v_error;
};

struct _GScannerConfig
{


  gchar *cset_skip_characters;
  gchar *cset_identifier_first;
  gchar *cset_identifier_nth;
  gchar *cpair_comment_single;



  guint case_sensitive : 1;




  guint skip_comment_multi : 1;
  guint skip_comment_single : 1;
  guint scan_comment_multi : 1;
  guint scan_identifier : 1;
  guint scan_identifier_1char : 1;
  guint scan_identifier_NULL : 1;
  guint scan_symbols : 1;
  guint scan_binary : 1;
  guint scan_octal : 1;
  guint scan_float : 1;
  guint scan_hex : 1;
  guint scan_hex_dollar : 1;
  guint scan_string_sq : 1;
  guint scan_string_dq : 1;
  guint numbers_2_int : 1;
  guint int_2_float : 1;
  guint identifier_2_string : 1;
  guint char_2_token : 1;
  guint symbol_2_token : 1;
  guint scope_0_fallback : 1;
  guint store_int64 : 1;


  guint padding_dummy;
};

struct _GScanner
{

  gpointer user_data;
  guint max_parse_errors;


  guint parse_errors;


  const gchar *input_name;


  GData *qdata;


  GScannerConfig *config;


  GTokenType token;
  GTokenValue value;
  guint line;
  guint position;


  GTokenType next_token;
  GTokenValue next_value;
  guint next_line;
  guint next_position;



  GHashTable *symbol_table;
  gint input_fd;
  const gchar *text;
  const gchar *text_end;
  gchar *buffer;
  guint scope_id;



  GScannerMsgFunc msg_handler;
};

extern
GScanner* g_scanner_new (const GScannerConfig *config_templ);
extern
void g_scanner_destroy (GScanner *scanner);
extern
void g_scanner_input_file (GScanner *scanner,
       gint input_fd);
extern
void g_scanner_sync_file_offset (GScanner *scanner);
extern
void g_scanner_input_text (GScanner *scanner,
       const gchar *text,
       guint text_len);
extern
GTokenType g_scanner_get_next_token (GScanner *scanner);
extern
GTokenType g_scanner_peek_next_token (GScanner *scanner);
extern
GTokenType g_scanner_cur_token (GScanner *scanner);
extern
GTokenValue g_scanner_cur_value (GScanner *scanner);
extern
guint g_scanner_cur_line (GScanner *scanner);
extern
guint g_scanner_cur_position (GScanner *scanner);
extern
gboolean g_scanner_eof (GScanner *scanner);
extern
guint g_scanner_set_scope (GScanner *scanner,
       guint scope_id);
extern
void g_scanner_scope_add_symbol (GScanner *scanner,
       guint scope_id,
       const gchar *symbol,
       gpointer value);
extern
void g_scanner_scope_remove_symbol (GScanner *scanner,
       guint scope_id,
       const gchar *symbol);
extern
gpointer g_scanner_scope_lookup_symbol (GScanner *scanner,
       guint scope_id,
       const gchar *symbol);
extern
void g_scanner_scope_foreach_symbol (GScanner *scanner,
       guint scope_id,
       GHFunc func,
       gpointer user_data);
extern
gpointer g_scanner_lookup_symbol (GScanner *scanner,
       const gchar *symbol);
extern
void g_scanner_unexp_token (GScanner *scanner,
       GTokenType expected_token,
       const gchar *identifier_spec,
       const gchar *symbol_spec,
       const gchar *symbol_name,
       const gchar *message,
       gint is_error);
extern
void g_scanner_error (GScanner *scanner,
       const gchar *format,
       ...) __attribute__((__format__ (__printf__, 2, 3)));
extern
void g_scanner_warn (GScanner *scanner,
       const gchar *format,
       ...) __attribute__((__format__ (__printf__, 2, 3)));
# 74 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/gsequence.h" 1
# 30 "/usr/include/glib-2.0/glib/gsequence.h"
typedef struct _GSequence GSequence;
typedef struct _GSequenceNode GSequenceIter;

typedef gint (* GSequenceIterCompareFunc) (GSequenceIter *a,
                                           GSequenceIter *b,
                                           gpointer data);



extern
GSequence * g_sequence_new (GDestroyNotify data_destroy);
extern
void g_sequence_free (GSequence *seq);
extern
gint g_sequence_get_length (GSequence *seq);
extern
void g_sequence_foreach (GSequence *seq,
                                              GFunc func,
                                              gpointer user_data);
extern
void g_sequence_foreach_range (GSequenceIter *begin,
                                              GSequenceIter *end,
                                              GFunc func,
                                              gpointer user_data);
extern
void g_sequence_sort (GSequence *seq,
                                              GCompareDataFunc cmp_func,
                                              gpointer cmp_data);
extern
void g_sequence_sort_iter (GSequence *seq,
                                              GSequenceIterCompareFunc cmp_func,
                                              gpointer cmp_data);



extern
GSequenceIter *g_sequence_get_begin_iter (GSequence *seq);
extern
GSequenceIter *g_sequence_get_end_iter (GSequence *seq);
extern
GSequenceIter *g_sequence_get_iter_at_pos (GSequence *seq,
                                              gint pos);
extern
GSequenceIter *g_sequence_append (GSequence *seq,
                                              gpointer data);
extern
GSequenceIter *g_sequence_prepend (GSequence *seq,
                                              gpointer data);
extern
GSequenceIter *g_sequence_insert_before (GSequenceIter *iter,
                                              gpointer data);
extern
void g_sequence_move (GSequenceIter *src,
                                              GSequenceIter *dest);
extern
void g_sequence_swap (GSequenceIter *a,
                                              GSequenceIter *b);
extern
GSequenceIter *g_sequence_insert_sorted (GSequence *seq,
                                              gpointer data,
                                              GCompareDataFunc cmp_func,
                                              gpointer cmp_data);
extern
GSequenceIter *g_sequence_insert_sorted_iter (GSequence *seq,
                                              gpointer data,
                                              GSequenceIterCompareFunc iter_cmp,
                                              gpointer cmp_data);
extern
void g_sequence_sort_changed (GSequenceIter *iter,
                                              GCompareDataFunc cmp_func,
                                              gpointer cmp_data);
extern
void g_sequence_sort_changed_iter (GSequenceIter *iter,
                                              GSequenceIterCompareFunc iter_cmp,
                                              gpointer cmp_data);
extern
void g_sequence_remove (GSequenceIter *iter);
extern
void g_sequence_remove_range (GSequenceIter *begin,
                                              GSequenceIter *end);
extern
void g_sequence_move_range (GSequenceIter *dest,
                                              GSequenceIter *begin,
                                              GSequenceIter *end);
extern
GSequenceIter *g_sequence_search (GSequence *seq,
                                              gpointer data,
                                              GCompareDataFunc cmp_func,
                                              gpointer cmp_data);
extern
GSequenceIter *g_sequence_search_iter (GSequence *seq,
                                              gpointer data,
                                              GSequenceIterCompareFunc iter_cmp,
                                              gpointer cmp_data);
extern
GSequenceIter *g_sequence_lookup (GSequence *seq,
                                              gpointer data,
                                              GCompareDataFunc cmp_func,
                                              gpointer cmp_data);
extern
GSequenceIter *g_sequence_lookup_iter (GSequence *seq,
                                              gpointer data,
                                              GSequenceIterCompareFunc iter_cmp,
                                              gpointer cmp_data);



extern
gpointer g_sequence_get (GSequenceIter *iter);
extern
void g_sequence_set (GSequenceIter *iter,
                                              gpointer data);


extern
gboolean g_sequence_iter_is_begin (GSequenceIter *iter);
extern
gboolean g_sequence_iter_is_end (GSequenceIter *iter);
extern
GSequenceIter *g_sequence_iter_next (GSequenceIter *iter);
extern
GSequenceIter *g_sequence_iter_prev (GSequenceIter *iter);
extern
gint g_sequence_iter_get_position (GSequenceIter *iter);
extern
GSequenceIter *g_sequence_iter_move (GSequenceIter *iter,
                                              gint delta);
extern
GSequence * g_sequence_iter_get_sequence (GSequenceIter *iter);



extern
gint g_sequence_iter_compare (GSequenceIter *a,
                                              GSequenceIter *b);
extern
GSequenceIter *g_sequence_range_get_midpoint (GSequenceIter *begin,
                                              GSequenceIter *end);
# 75 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/gshell.h" 1
# 34 "/usr/include/glib-2.0/glib/gshell.h"
typedef enum
{

  G_SHELL_ERROR_BAD_QUOTING,

  G_SHELL_ERROR_EMPTY_STRING,
  G_SHELL_ERROR_FAILED
} GShellError;

extern
GQuark g_shell_error_quark (void);

extern
gchar* g_shell_quote (const gchar *unquoted_string);
extern
gchar* g_shell_unquote (const gchar *quoted_string,
                             GError **error);
extern
gboolean g_shell_parse_argv (const gchar *command_line,
                             gint *argcp,
                             gchar ***argvp,
                             GError **error);
# 76 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/gslice.h" 1
# 31 "/usr/include/glib-2.0/glib/gslice.h"
extern
gpointer g_slice_alloc (gsize block_size) __attribute__((__malloc__)) ;
extern
gpointer g_slice_alloc0 (gsize block_size) __attribute__((__malloc__)) ;
extern
gpointer g_slice_copy (gsize block_size,
                                         gconstpointer mem_block) __attribute__((__malloc__)) ;
extern
void g_slice_free1 (gsize block_size,
      gpointer mem_block);
extern
void g_slice_free_chain_with_offset (gsize block_size,
      gpointer mem_chain,
      gsize next_offset);
# 76 "/usr/include/glib-2.0/glib/gslice.h"
typedef enum {
  G_SLICE_CONFIG_ALWAYS_MALLOC = 1,
  G_SLICE_CONFIG_BYPASS_MAGAZINES,
  G_SLICE_CONFIG_WORKING_SET_MSECS,
  G_SLICE_CONFIG_COLOR_INCREMENT,
  G_SLICE_CONFIG_CHUNK_SIZES,
  G_SLICE_CONFIG_CONTENTION_COUNTER
} GSliceConfig;

__attribute__((__deprecated__)) extern
void g_slice_set_config (GSliceConfig ckey, gint64 value);
__attribute__((__deprecated__)) extern
gint64 g_slice_get_config (GSliceConfig ckey);
__attribute__((__deprecated__)) extern
gint64* g_slice_get_config_state (GSliceConfig ckey, gint64 address, guint *n_values);
# 77 "/usr/include/glib-2.0/glib.h" 2

# 1 "/usr/include/glib-2.0/glib/gspawn.h" 1
# 70 "/usr/include/glib-2.0/glib/gspawn.h"
typedef enum
{
  G_SPAWN_ERROR_FORK,
  G_SPAWN_ERROR_READ,
  G_SPAWN_ERROR_CHDIR,
  G_SPAWN_ERROR_ACCES,
  G_SPAWN_ERROR_PERM,
  G_SPAWN_ERROR_TOO_BIG,

  G_SPAWN_ERROR_2BIG = G_SPAWN_ERROR_TOO_BIG,

  G_SPAWN_ERROR_NOEXEC,
  G_SPAWN_ERROR_NAMETOOLONG,
  G_SPAWN_ERROR_NOENT,
  G_SPAWN_ERROR_NOMEM,
  G_SPAWN_ERROR_NOTDIR,
  G_SPAWN_ERROR_LOOP,
  G_SPAWN_ERROR_TXTBUSY,
  G_SPAWN_ERROR_IO,
  G_SPAWN_ERROR_NFILE,
  G_SPAWN_ERROR_MFILE,
  G_SPAWN_ERROR_INVAL,
  G_SPAWN_ERROR_ISDIR,
  G_SPAWN_ERROR_LIBBAD,
  G_SPAWN_ERROR_FAILED


} GSpawnError;
# 142 "/usr/include/glib-2.0/glib/gspawn.h"
typedef void (* GSpawnChildSetupFunc) (gpointer user_data);
# 172 "/usr/include/glib-2.0/glib/gspawn.h"
typedef enum
{
  G_SPAWN_DEFAULT = 0,
  G_SPAWN_LEAVE_DESCRIPTORS_OPEN = 1 << 0,
  G_SPAWN_DO_NOT_REAP_CHILD = 1 << 1,

  G_SPAWN_SEARCH_PATH = 1 << 2,

  G_SPAWN_STDOUT_TO_DEV_NULL = 1 << 3,
  G_SPAWN_STDERR_TO_DEV_NULL = 1 << 4,
  G_SPAWN_CHILD_INHERITS_STDIN = 1 << 5,
  G_SPAWN_FILE_AND_ARGV_ZERO = 1 << 6,
  G_SPAWN_SEARCH_PATH_FROM_ENVP = 1 << 7,
  G_SPAWN_CLOEXEC_PIPES = 1 << 8
} GSpawnFlags;

extern
GQuark g_spawn_error_quark (void);
extern
GQuark g_spawn_exit_error_quark (void);

extern
gboolean g_spawn_async (const gchar *working_directory,
                        gchar **argv,
                        gchar **envp,
                        GSpawnFlags flags,
                        GSpawnChildSetupFunc child_setup,
                        gpointer user_data,
                        GPid *child_pid,
                        GError **error);





extern
gboolean g_spawn_async_with_pipes (const gchar *working_directory,
                                   gchar **argv,
                                   gchar **envp,
                                   GSpawnFlags flags,
                                   GSpawnChildSetupFunc child_setup,
                                   gpointer user_data,
                                   GPid *child_pid,
                                   gint *standard_input,
                                   gint *standard_output,
                                   gint *standard_error,
                                   GError **error);






extern
gboolean g_spawn_sync (const gchar *working_directory,
                               gchar **argv,
                               gchar **envp,
                               GSpawnFlags flags,
                               GSpawnChildSetupFunc child_setup,
                               gpointer user_data,
                               gchar **standard_output,
                               gchar **standard_error,
                               gint *exit_status,
                               GError **error);

extern
gboolean g_spawn_command_line_sync (const gchar *command_line,
                                     gchar **standard_output,
                                     gchar **standard_error,
                                     gint *exit_status,
                                     GError **error);
extern
gboolean g_spawn_command_line_async (const gchar *command_line,
                                     GError **error);

extern
gboolean g_spawn_check_exit_status (gint exit_status,
        GError **error);

extern
void g_spawn_close_pid (GPid pid);
# 79 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/gstrfuncs.h" 1
# 39 "/usr/include/glib-2.0/glib/gstrfuncs.h"
typedef enum {
  G_ASCII_ALNUM = 1 << 0,
  G_ASCII_ALPHA = 1 << 1,
  G_ASCII_CNTRL = 1 << 2,
  G_ASCII_DIGIT = 1 << 3,
  G_ASCII_GRAPH = 1 << 4,
  G_ASCII_LOWER = 1 << 5,
  G_ASCII_PRINT = 1 << 6,
  G_ASCII_PUNCT = 1 << 7,
  G_ASCII_SPACE = 1 << 8,
  G_ASCII_UPPER = 1 << 9,
  G_ASCII_XDIGIT = 1 << 10
} GAsciiType;

extern const guint16 * const g_ascii_table;
# 88 "/usr/include/glib-2.0/glib/gstrfuncs.h"
extern
gchar g_ascii_tolower (gchar c) __attribute__((__const__));
extern
gchar g_ascii_toupper (gchar c) __attribute__((__const__));

extern
gint g_ascii_digit_value (gchar c) __attribute__((__const__));
extern
gint g_ascii_xdigit_value (gchar c) __attribute__((__const__));





extern
gchar* g_strdelimit (gchar *string,
     const gchar *delimiters,
     gchar new_delimiter);
extern
gchar* g_strcanon (gchar *string,
     const gchar *valid_chars,
     gchar substitutor);
extern
const gchar * g_strerror (gint errnum) __attribute__((__const__));
extern
const gchar * g_strsignal (gint signum) __attribute__((__const__));
extern
gchar * g_strreverse (gchar *string);
extern
gsize g_strlcpy (gchar *dest,
     const gchar *src,
     gsize dest_size);
extern
gsize g_strlcat (gchar *dest,
     const gchar *src,
     gsize dest_size);
extern
gchar * g_strstr_len (const gchar *haystack,
     gssize haystack_len,
     const gchar *needle);
extern
gchar * g_strrstr (const gchar *haystack,
     const gchar *needle);
extern
gchar * g_strrstr_len (const gchar *haystack,
     gssize haystack_len,
     const gchar *needle);

extern
gboolean g_str_has_suffix (const gchar *str,
     const gchar *suffix);
extern
gboolean g_str_has_prefix (const gchar *str,
     const gchar *prefix);



extern
gdouble g_strtod (const gchar *nptr,
     gchar **endptr);
extern
gdouble g_ascii_strtod (const gchar *nptr,
     gchar **endptr);
extern
guint64 g_ascii_strtoull (const gchar *nptr,
     gchar **endptr,
     guint base);
extern
gint64 g_ascii_strtoll (const gchar *nptr,
     gchar **endptr,
     guint base);




extern
gchar * g_ascii_dtostr (gchar *buffer,
     gint buf_len,
     gdouble d);
extern
gchar * g_ascii_formatd (gchar *buffer,
     gint buf_len,
     const gchar *format,
     gdouble d);


extern
gchar* g_strchug (gchar *string);

extern
gchar* g_strchomp (gchar *string);



extern
gint g_ascii_strcasecmp (const gchar *s1,
        const gchar *s2);
extern
gint g_ascii_strncasecmp (const gchar *s1,
        const gchar *s2,
        gsize n);
extern
gchar* g_ascii_strdown (const gchar *str,
        gssize len) __attribute__((__malloc__));
extern
gchar* g_ascii_strup (const gchar *str,
        gssize len) __attribute__((__malloc__));

extern
gboolean g_str_is_ascii (const gchar *str);

__attribute__((__deprecated__)) extern
gint g_strcasecmp (const gchar *s1,
                                        const gchar *s2);
__attribute__((__deprecated__)) extern
gint g_strncasecmp (const gchar *s1,
                                        const gchar *s2,
                                        guint n);
__attribute__((__deprecated__)) extern
gchar* g_strdown (gchar *string);
__attribute__((__deprecated__)) extern
gchar* g_strup (gchar *string);





extern
gchar* g_strdup (const gchar *str) __attribute__((__malloc__));
extern
gchar* g_strdup_printf (const gchar *format,
     ...) __attribute__((__format__ (__printf__, 1, 2))) __attribute__((__malloc__));
extern
gchar* g_strdup_vprintf (const gchar *format,
     va_list args) __attribute__((__format__ (__printf__, 1, 0))) __attribute__((__malloc__));
extern
gchar* g_strndup (const gchar *str,
     gsize n) __attribute__((__malloc__));
extern
gchar* g_strnfill (gsize length,
     gchar fill_char) __attribute__((__malloc__));
extern
gchar* g_strconcat (const gchar *string1,
     ...) __attribute__((__malloc__)) __attribute__((__sentinel__));
extern
gchar* g_strjoin (const gchar *separator,
     ...) __attribute__((__malloc__)) __attribute__((__sentinel__));





extern
gchar* g_strcompress (const gchar *source) __attribute__((__malloc__));
# 251 "/usr/include/glib-2.0/glib/gstrfuncs.h"
extern
gchar* g_strescape (const gchar *source,
     const gchar *exceptions) __attribute__((__malloc__));

extern
gpointer g_memdup (gconstpointer mem,
     guint byte_size) __attribute__((__malloc__)) ;
# 268 "/usr/include/glib-2.0/glib/gstrfuncs.h"
extern
gchar** g_strsplit (const gchar *string,
     const gchar *delimiter,
     gint max_tokens) __attribute__((__malloc__));
extern
gchar ** g_strsplit_set (const gchar *string,
     const gchar *delimiters,
     gint max_tokens) __attribute__((__malloc__));
extern
gchar* g_strjoinv (const gchar *separator,
     gchar **str_array) __attribute__((__malloc__));
extern
void g_strfreev (gchar **str_array);
extern
gchar** g_strdupv (gchar **str_array) __attribute__((__malloc__));
extern
guint g_strv_length (gchar **str_array);

extern
gchar* g_stpcpy (gchar *dest,
                                        const char *src);

extern
gchar * g_str_to_ascii (const gchar *str,
                                                                         const gchar *from_locale);

extern
gchar ** g_str_tokenize_and_fold (const gchar *string,
                                                                         const gchar *translit_locale,
                                                                         gchar ***ascii_alternates);

extern
gboolean g_str_match_string (const gchar *search_term,
                                                                         const gchar *potential_hit,
                                                                         gboolean accept_alternates);
# 80 "/usr/include/glib-2.0/glib.h" 2

# 1 "/usr/include/glib-2.0/glib/gstringchunk.h" 1
# 36 "/usr/include/glib-2.0/glib/gstringchunk.h"
typedef struct _GStringChunk GStringChunk;

extern
GStringChunk* g_string_chunk_new (gsize size);
extern
void g_string_chunk_free (GStringChunk *chunk);
extern
void g_string_chunk_clear (GStringChunk *chunk);
extern
gchar* g_string_chunk_insert (GStringChunk *chunk,
                                           const gchar *string);
extern
gchar* g_string_chunk_insert_len (GStringChunk *chunk,
                                           const gchar *string,
                                           gssize len);
extern
gchar* g_string_chunk_insert_const (GStringChunk *chunk,
                                           const gchar *string);
# 82 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/gtestutils.h" 1
# 33 "/usr/include/glib-2.0/glib/gtestutils.h"
typedef struct GTestCase GTestCase;
typedef struct GTestSuite GTestSuite;
typedef void (*GTestFunc) (void);
typedef void (*GTestDataFunc) (gconstpointer user_data);
typedef void (*GTestFixtureFunc) (gpointer fixture,
                                  gconstpointer user_data);
# 112 "/usr/include/glib-2.0/glib/gtestutils.h"
extern
int g_strcmp0 (const char *str1,
                                         const char *str2);


extern
void g_test_minimized_result (double minimized_quantity,
                                         const char *format,
                                         ...) __attribute__((__format__ (__printf__, 2, 3)));
extern
void g_test_maximized_result (double maximized_quantity,
                                         const char *format,
                                         ...) __attribute__((__format__ (__printf__, 2, 3)));


extern
void g_test_init (int *argc,
                                         char ***argv,
                                         ...) __attribute__((__sentinel__));
# 140 "/usr/include/glib-2.0/glib/gtestutils.h"
extern
gboolean g_test_subprocess (void);


extern
int g_test_run (void);

extern
void g_test_add_func (const char *testpath,
                                         GTestFunc test_func);

extern
void g_test_add_data_func (const char *testpath,
                                         gconstpointer test_data,
                                         GTestDataFunc test_func);

extern
void g_test_add_data_func_full (const char *testpath,
                                         gpointer test_data,
                                         GTestDataFunc test_func,
                                         GDestroyNotify data_free_func);


extern
void g_test_fail (void);
extern
void g_test_incomplete (const gchar *msg);
extern
void g_test_skip (const gchar *msg);
extern
gboolean g_test_failed (void);
extern
void g_test_set_nonfatal_assertions (void);
# 188 "/usr/include/glib-2.0/glib/gtestutils.h"
extern
void g_test_message (const char *format,
                                         ...) __attribute__((__format__ (__printf__, 1, 2)));
extern
void g_test_bug_base (const char *uri_pattern);
extern
void g_test_bug (const char *bug_uri_snippet);

extern
void g_test_timer_start (void);
extern
double g_test_timer_elapsed (void);
extern
double g_test_timer_last (void);


extern
void g_test_queue_free (gpointer gfree_pointer);
extern
void g_test_queue_destroy (GDestroyNotify destroy_func,
                                         gpointer destroy_data);


typedef enum {
  G_TEST_TRAP_SILENCE_STDOUT = 1 << 7,
  G_TEST_TRAP_SILENCE_STDERR = 1 << 8,
  G_TEST_TRAP_INHERIT_STDIN = 1 << 9
} GTestTrapFlags;

__attribute__((__deprecated__)) extern
gboolean g_test_trap_fork (guint64 usec_timeout,
                                         GTestTrapFlags test_trap_flags);

typedef enum {
  G_TEST_SUBPROCESS_INHERIT_STDIN = 1 << 0,
  G_TEST_SUBPROCESS_INHERIT_STDOUT = 1 << 1,
  G_TEST_SUBPROCESS_INHERIT_STDERR = 1 << 2
} GTestSubprocessFlags;

extern
void g_test_trap_subprocess (const char *test_path,
                                         guint64 usec_timeout,
                                         GTestSubprocessFlags test_flags);

extern
gboolean g_test_trap_has_passed (void);
extern
gboolean g_test_trap_reached_timeout (void);
# 245 "/usr/include/glib-2.0/glib/gtestutils.h"
extern
gint32 g_test_rand_int (void);
extern
gint32 g_test_rand_int_range (gint32 begin,
                                         gint32 end);
extern
double g_test_rand_double (void);
extern
double g_test_rand_double_range (double range_start,
                                         double range_end);


extern
GTestCase* g_test_create_case (const char *test_name,
                                         gsize data_size,
                                         gconstpointer test_data,
                                         GTestFixtureFunc data_setup,
                                         GTestFixtureFunc data_test,
                                         GTestFixtureFunc data_teardown);
extern
GTestSuite* g_test_create_suite (const char *suite_name);
extern
GTestSuite* g_test_get_root (void);
extern
void g_test_suite_add (GTestSuite *suite,
                                         GTestCase *test_case);
extern
void g_test_suite_add_suite (GTestSuite *suite,
                                         GTestSuite *nestedsuite);
extern
int g_test_run_suite (GTestSuite *suite);


extern
void g_test_trap_assertions (const char *domain,
                                         const char *file,
                                         int line,
                                         const char *func,
                                         guint64 assertion_flags,
                                         const char *pattern);
extern
void g_assertion_message (const char *domain,
                                         const char *file,
                                         int line,
                                         const char *func,
                                         const char *message);
extern
void g_assertion_message_expr (const char *domain,
                                         const char *file,
                                         int line,
                                         const char *func,
                                         const char *expr) __attribute__((__noreturn__));
extern
void g_assertion_message_cmpstr (const char *domain,
                                         const char *file,
                                         int line,
                                         const char *func,
                                         const char *expr,
                                         const char *arg1,
                                         const char *cmp,
                                         const char *arg2);
extern
void g_assertion_message_cmpnum (const char *domain,
                                         const char *file,
                                         int line,
                                         const char *func,
                                         const char *expr,
                                         long double arg1,
                                         const char *cmp,
                                         long double arg2,
                                         char numtype);
extern
void g_assertion_message_error (const char *domain,
                                         const char *file,
                                         int line,
                                         const char *func,
                                         const char *expr,
                                         const GError *error,
                                         GQuark error_domain,
                                         int error_code);
extern
void g_test_add_vtable (const char *testpath,
                                         gsize data_size,
                                         gconstpointer test_data,
                                         GTestFixtureFunc data_setup,
                                         GTestFixtureFunc data_test,
                                         GTestFixtureFunc data_teardown);
typedef struct {
  gboolean test_initialized;
  gboolean test_quick;
  gboolean test_perf;
  gboolean test_verbose;
  gboolean test_quiet;
  gboolean test_undefined;
} GTestConfig;
extern const GTestConfig * const g_test_config_vars;


typedef enum {
  G_TEST_LOG_NONE,
  G_TEST_LOG_ERROR,
  G_TEST_LOG_START_BINARY,
  G_TEST_LOG_LIST_CASE,
  G_TEST_LOG_SKIP_CASE,
  G_TEST_LOG_START_CASE,
  G_TEST_LOG_STOP_CASE,
  G_TEST_LOG_MIN_RESULT,
  G_TEST_LOG_MAX_RESULT,
  G_TEST_LOG_MESSAGE,
  G_TEST_LOG_START_SUITE,
  G_TEST_LOG_STOP_SUITE
} GTestLogType;

typedef struct {
  GTestLogType log_type;
  guint n_strings;
  gchar **strings;
  guint n_nums;
  long double *nums;
} GTestLogMsg;
typedef struct {

  GString *data;
  GSList *msgs;
} GTestLogBuffer;

extern
const char* g_test_log_type_name (GTestLogType log_type);
extern
GTestLogBuffer* g_test_log_buffer_new (void);
extern
void g_test_log_buffer_free (GTestLogBuffer *tbuffer);
extern
void g_test_log_buffer_push (GTestLogBuffer *tbuffer,
                                         guint n_bytes,
                                         const guint8 *bytes);
extern
GTestLogMsg* g_test_log_buffer_pop (GTestLogBuffer *tbuffer);
extern
void g_test_log_msg_free (GTestLogMsg *tmsg);
# 399 "/usr/include/glib-2.0/glib/gtestutils.h"
typedef gboolean (*GTestLogFatalFunc) (const gchar *log_domain,
                                                 GLogLevelFlags log_level,
                                                 const gchar *message,
                                                 gpointer user_data);
extern
void
g_test_log_set_fatal_handler (GTestLogFatalFunc log_func,
                                         gpointer user_data);

extern
void g_test_expect_message (const gchar *log_domain,
                                                  GLogLevelFlags log_level,
                                                  const gchar *pattern);
extern
void g_test_assert_expected_messages_internal (const char *domain,
                                                  const char *file,
                                                  int line,
                                                  const char *func);

typedef enum
{
  G_TEST_DIST,
  G_TEST_BUILT
} GTestFileType;

extern
gchar * g_test_build_filename (GTestFileType file_type,
                                                  const gchar *first_path,
                                                  ...) __attribute__((__sentinel__));
extern
const gchar *g_test_get_dir (GTestFileType file_type);
extern
const gchar *g_test_get_filename (GTestFileType file_type,
                                                  const gchar *first_path,
                                                  ...) __attribute__((__sentinel__));
# 83 "/usr/include/glib-2.0/glib.h" 2

# 1 "/usr/include/glib-2.0/glib/gthreadpool.h" 1
# 36 "/usr/include/glib-2.0/glib/gthreadpool.h"
typedef struct _GThreadPool GThreadPool;




struct _GThreadPool
{
  GFunc func;
  gpointer user_data;
  gboolean exclusive;
};

extern
GThreadPool * g_thread_pool_new (GFunc func,
                                                 gpointer user_data,
                                                 gint max_threads,
                                                 gboolean exclusive,
                                                 GError **error);
extern
void g_thread_pool_free (GThreadPool *pool,
                                                 gboolean immediate,
                                                 gboolean wait_);
extern
gboolean g_thread_pool_push (GThreadPool *pool,
                                                 gpointer data,
                                                 GError **error);
extern
guint g_thread_pool_unprocessed (GThreadPool *pool);
extern
void g_thread_pool_set_sort_function (GThreadPool *pool,
                                                 GCompareDataFunc func,
                                                 gpointer user_data);
extern
gboolean g_thread_pool_set_max_threads (GThreadPool *pool,
                                                 gint max_threads,
                                                 GError **error);
extern
gint g_thread_pool_get_max_threads (GThreadPool *pool);
extern
guint g_thread_pool_get_num_threads (GThreadPool *pool);

extern
void g_thread_pool_set_max_unused_threads (gint max_threads);
extern
gint g_thread_pool_get_max_unused_threads (void);
extern
guint g_thread_pool_get_num_unused_threads (void);
extern
void g_thread_pool_stop_unused_threads (void);
extern
void g_thread_pool_set_max_idle_time (guint interval);
extern
guint g_thread_pool_get_max_idle_time (void);
# 85 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/gtimer.h" 1
# 40 "/usr/include/glib-2.0/glib/gtimer.h"
typedef struct _GTimer GTimer;



extern
GTimer* g_timer_new (void);
extern
void g_timer_destroy (GTimer *timer);
extern
void g_timer_start (GTimer *timer);
extern
void g_timer_stop (GTimer *timer);
extern
void g_timer_reset (GTimer *timer);
extern
void g_timer_continue (GTimer *timer);
extern
gdouble g_timer_elapsed (GTimer *timer,
      gulong *microseconds);

extern
void g_usleep (gulong microseconds);

extern
void g_time_val_add (GTimeVal *time_,
                                  glong microseconds);
extern
gboolean g_time_val_from_iso8601 (const gchar *iso_date,
      GTimeVal *time_);
extern
gchar* g_time_val_to_iso8601 (GTimeVal *time_) __attribute__((__malloc__));
# 86 "/usr/include/glib-2.0/glib.h" 2

# 1 "/usr/include/glib-2.0/glib/gtrashstack.h" 1
# 36 "/usr/include/glib-2.0/glib/gtrashstack.h"
typedef struct _GTrashStack GTrashStack;
struct _GTrashStack
{
  GTrashStack *next;
};

static __inline __attribute__ ((unused)) void g_trash_stack_push (GTrashStack **stack_p,
                                              gpointer data_p);
static __inline __attribute__ ((unused)) gpointer g_trash_stack_pop (GTrashStack **stack_p);
static __inline __attribute__ ((unused)) gpointer g_trash_stack_peek (GTrashStack **stack_p);
static __inline __attribute__ ((unused)) guint g_trash_stack_height (GTrashStack **stack_p);



static __inline __attribute__ ((unused)) void
g_trash_stack_push (GTrashStack **stack_p,
                    gpointer data_p)
{
  GTrashStack *data = (GTrashStack *) data_p;

  data->next = *stack_p;
  *stack_p = data;
}
static __inline __attribute__ ((unused)) gpointer
g_trash_stack_pop (GTrashStack **stack_p)
{
  GTrashStack *data;

  data = *stack_p;
  if (data)
    {
      *stack_p = data->next;



      data->next = ((void*)0);
    }

  return data;
}
static __inline __attribute__ ((unused)) gpointer
g_trash_stack_peek (GTrashStack **stack_p)
{
  GTrashStack *data;

  data = *stack_p;

  return data;
}
static __inline __attribute__ ((unused)) guint
g_trash_stack_height (GTrashStack **stack_p)
{
  GTrashStack *data;
  guint i = 0;

  for (data = *stack_p; data; data = data->next)
    i++;

  return i;
}
# 88 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/gtree.h" 1
# 36 "/usr/include/glib-2.0/glib/gtree.h"
typedef struct _GTree GTree;

typedef gboolean (*GTraverseFunc) (gpointer key,
                                   gpointer value,
                                   gpointer data);



extern
GTree* g_tree_new (GCompareFunc key_compare_func);
extern
GTree* g_tree_new_with_data (GCompareDataFunc key_compare_func,
                                 gpointer key_compare_data);
extern
GTree* g_tree_new_full (GCompareDataFunc key_compare_func,
                                 gpointer key_compare_data,
                                 GDestroyNotify key_destroy_func,
                                 GDestroyNotify value_destroy_func);
extern
GTree* g_tree_ref (GTree *tree);
extern
void g_tree_unref (GTree *tree);
extern
void g_tree_destroy (GTree *tree);
extern
void g_tree_insert (GTree *tree,
                                 gpointer key,
                                 gpointer value);
extern
void g_tree_replace (GTree *tree,
                                 gpointer key,
                                 gpointer value);
extern
gboolean g_tree_remove (GTree *tree,
                                 gconstpointer key);
extern
gboolean g_tree_steal (GTree *tree,
                                 gconstpointer key);
extern
gpointer g_tree_lookup (GTree *tree,
                                 gconstpointer key);
extern
gboolean g_tree_lookup_extended (GTree *tree,
                                 gconstpointer lookup_key,
                                 gpointer *orig_key,
                                 gpointer *value);
extern
void g_tree_foreach (GTree *tree,
                                 GTraverseFunc func,
                                 gpointer user_data);

__attribute__((__deprecated__)) extern
void g_tree_traverse (GTree *tree,
                                 GTraverseFunc traverse_func,
                                 GTraverseType traverse_type,
                                 gpointer user_data);

extern
gpointer g_tree_search (GTree *tree,
                                 GCompareFunc search_func,
                                 gconstpointer user_data);
extern
gint g_tree_height (GTree *tree);
extern
gint g_tree_nnodes (GTree *tree);
# 89 "/usr/include/glib-2.0/glib.h" 2


# 1 "/usr/include/glib-2.0/glib/gurifuncs.h" 1
# 67 "/usr/include/glib-2.0/glib/gurifuncs.h"
extern
char * g_uri_unescape_string (const char *escaped_string,
          const char *illegal_characters);
extern
char * g_uri_unescape_segment (const char *escaped_string,
          const char *escaped_string_end,
          const char *illegal_characters);
extern
char * g_uri_parse_scheme (const char *uri);
extern
char * g_uri_escape_string (const char *unescaped,
          const char *reserved_chars_allowed,
          gboolean allow_utf8);
# 92 "/usr/include/glib-2.0/glib.h" 2

# 1 "/usr/include/glib-2.0/glib/gvarianttype.h" 1
# 42 "/usr/include/glib-2.0/glib/gvarianttype.h"
typedef struct _GVariantType GVariantType;
# 295 "/usr/include/glib-2.0/glib/gvarianttype.h"
extern
gboolean g_variant_type_string_is_valid (const gchar *type_string);
extern
gboolean g_variant_type_string_scan (const gchar *string,
                                                                         const gchar *limit,
                                                                         const gchar **endptr);


extern
void g_variant_type_free (GVariantType *type);
extern
GVariantType * g_variant_type_copy (const GVariantType *type);
extern
GVariantType * g_variant_type_new (const gchar *type_string);


extern
gsize g_variant_type_get_string_length (const GVariantType *type);
extern
const gchar * g_variant_type_peek_string (const GVariantType *type);
extern
gchar * g_variant_type_dup_string (const GVariantType *type);


extern
gboolean g_variant_type_is_definite (const GVariantType *type);
extern
gboolean g_variant_type_is_container (const GVariantType *type);
extern
gboolean g_variant_type_is_basic (const GVariantType *type);
extern
gboolean g_variant_type_is_maybe (const GVariantType *type);
extern
gboolean g_variant_type_is_array (const GVariantType *type);
extern
gboolean g_variant_type_is_tuple (const GVariantType *type);
extern
gboolean g_variant_type_is_dict_entry (const GVariantType *type);
extern
gboolean g_variant_type_is_variant (const GVariantType *type);


extern
guint g_variant_type_hash (gconstpointer type);
extern
gboolean g_variant_type_equal (gconstpointer type1,
                                                                         gconstpointer type2);


extern
gboolean g_variant_type_is_subtype_of (const GVariantType *type,
                                                                         const GVariantType *supertype);


extern
const GVariantType * g_variant_type_element (const GVariantType *type);
extern
const GVariantType * g_variant_type_first (const GVariantType *type);
extern
const GVariantType * g_variant_type_next (const GVariantType *type);
extern
gsize g_variant_type_n_items (const GVariantType *type);
extern
const GVariantType * g_variant_type_key (const GVariantType *type);
extern
const GVariantType * g_variant_type_value (const GVariantType *type);


extern
GVariantType * g_variant_type_new_array (const GVariantType *element);
extern
GVariantType * g_variant_type_new_maybe (const GVariantType *element);
extern
GVariantType * g_variant_type_new_tuple (const GVariantType * const *items,
                                                                         gint length);
extern
GVariantType * g_variant_type_new_dict_entry (const GVariantType *key,
                                                                         const GVariantType *value);


extern
const GVariantType * g_variant_type_checked_ (const gchar *);
# 94 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/gvariant.h" 1
# 34 "/usr/include/glib-2.0/glib/gvariant.h"
typedef struct _GVariant GVariant;

typedef enum
{
  G_VARIANT_CLASS_BOOLEAN = 'b',
  G_VARIANT_CLASS_BYTE = 'y',
  G_VARIANT_CLASS_INT16 = 'n',
  G_VARIANT_CLASS_UINT16 = 'q',
  G_VARIANT_CLASS_INT32 = 'i',
  G_VARIANT_CLASS_UINT32 = 'u',
  G_VARIANT_CLASS_INT64 = 'x',
  G_VARIANT_CLASS_UINT64 = 't',
  G_VARIANT_CLASS_HANDLE = 'h',
  G_VARIANT_CLASS_DOUBLE = 'd',
  G_VARIANT_CLASS_STRING = 's',
  G_VARIANT_CLASS_OBJECT_PATH = 'o',
  G_VARIANT_CLASS_SIGNATURE = 'g',
  G_VARIANT_CLASS_VARIANT = 'v',
  G_VARIANT_CLASS_MAYBE = 'm',
  G_VARIANT_CLASS_ARRAY = 'a',
  G_VARIANT_CLASS_TUPLE = '(',
  G_VARIANT_CLASS_DICT_ENTRY = '{'
} GVariantClass;

extern
void g_variant_unref (GVariant *value);
extern
GVariant * g_variant_ref (GVariant *value);
extern
GVariant * g_variant_ref_sink (GVariant *value);
extern
gboolean g_variant_is_floating (GVariant *value);
extern
GVariant * g_variant_take_ref (GVariant *value);

extern
const GVariantType * g_variant_get_type (GVariant *value);
extern
const gchar * g_variant_get_type_string (GVariant *value);
extern
gboolean g_variant_is_of_type (GVariant *value,
                                                                         const GVariantType *type);
extern
gboolean g_variant_is_container (GVariant *value);
extern
GVariantClass g_variant_classify (GVariant *value);
extern
GVariant * g_variant_new_boolean (gboolean value);
extern
GVariant * g_variant_new_byte (guchar value);
extern
GVariant * g_variant_new_int16 (gint16 value);
extern
GVariant * g_variant_new_uint16 (guint16 value);
extern
GVariant * g_variant_new_int32 (gint32 value);
extern
GVariant * g_variant_new_uint32 (guint32 value);
extern
GVariant * g_variant_new_int64 (gint64 value);
extern
GVariant * g_variant_new_uint64 (guint64 value);
extern
GVariant * g_variant_new_handle (gint32 value);
extern
GVariant * g_variant_new_double (gdouble value);
extern
GVariant * g_variant_new_string (const gchar *string);
extern
GVariant * g_variant_new_take_string (gchar *string);
extern
GVariant * g_variant_new_printf (const gchar *format_string,
                                                                         ...) __attribute__((__format__ (__printf__, 1, 2)));
extern
GVariant * g_variant_new_object_path (const gchar *object_path);
extern
gboolean g_variant_is_object_path (const gchar *string);
extern
GVariant * g_variant_new_signature (const gchar *signature);
extern
gboolean g_variant_is_signature (const gchar *string);
extern
GVariant * g_variant_new_variant (GVariant *value);
extern
GVariant * g_variant_new_strv (const gchar * const *strv,
                                                                         gssize length);
extern
GVariant * g_variant_new_objv (const gchar * const *strv,
                                                                         gssize length);
extern
GVariant * g_variant_new_bytestring (const gchar *string);
extern
GVariant * g_variant_new_bytestring_array (const gchar * const *strv,
                                                                         gssize length);
extern
GVariant * g_variant_new_fixed_array (const GVariantType *element_type,
                                                                         gconstpointer elements,
                                                                         gsize n_elements,
                                                                         gsize element_size);
extern
gboolean g_variant_get_boolean (GVariant *value);
extern
guchar g_variant_get_byte (GVariant *value);
extern
gint16 g_variant_get_int16 (GVariant *value);
extern
guint16 g_variant_get_uint16 (GVariant *value);
extern
gint32 g_variant_get_int32 (GVariant *value);
extern
guint32 g_variant_get_uint32 (GVariant *value);
extern
gint64 g_variant_get_int64 (GVariant *value);
extern
guint64 g_variant_get_uint64 (GVariant *value);
extern
gint32 g_variant_get_handle (GVariant *value);
extern
gdouble g_variant_get_double (GVariant *value);
extern
GVariant * g_variant_get_variant (GVariant *value);
extern
const gchar * g_variant_get_string (GVariant *value,
                                                                         gsize *length);
extern
gchar * g_variant_dup_string (GVariant *value,
                                                                         gsize *length);
extern
const gchar ** g_variant_get_strv (GVariant *value,
                                                                         gsize *length);
extern
gchar ** g_variant_dup_strv (GVariant *value,
                                                                         gsize *length);
extern
const gchar ** g_variant_get_objv (GVariant *value,
                                                                         gsize *length);
extern
gchar ** g_variant_dup_objv (GVariant *value,
                                                                         gsize *length);
extern
const gchar * g_variant_get_bytestring (GVariant *value);
extern
gchar * g_variant_dup_bytestring (GVariant *value,
                                                                         gsize *length);
extern
const gchar ** g_variant_get_bytestring_array (GVariant *value,
                                                                         gsize *length);
extern
gchar ** g_variant_dup_bytestring_array (GVariant *value,
                                                                         gsize *length);

extern
GVariant * g_variant_new_maybe (const GVariantType *child_type,
                                                                         GVariant *child);
extern
GVariant * g_variant_new_array (const GVariantType *child_type,
                                                                         GVariant * const *children,
                                                                         gsize n_children);
extern
GVariant * g_variant_new_tuple (GVariant * const *children,
                                                                         gsize n_children);
extern
GVariant * g_variant_new_dict_entry (GVariant *key,
                                                                         GVariant *value);

extern
GVariant * g_variant_get_maybe (GVariant *value);
extern
gsize g_variant_n_children (GVariant *value);
extern
void g_variant_get_child (GVariant *value,
                                                                         gsize index_,
                                                                         const gchar *format_string,
                                                                         ...);
extern
GVariant * g_variant_get_child_value (GVariant *value,
                                                                         gsize index_);
extern
gboolean g_variant_lookup (GVariant *dictionary,
                                                                         const gchar *key,
                                                                         const gchar *format_string,
                                                                         ...);
extern
GVariant * g_variant_lookup_value (GVariant *dictionary,
                                                                         const gchar *key,
                                                                         const GVariantType *expected_type);
extern
gconstpointer g_variant_get_fixed_array (GVariant *value,
                                                                         gsize *n_elements,
                                                                         gsize element_size);

extern
gsize g_variant_get_size (GVariant *value);
extern
gconstpointer g_variant_get_data (GVariant *value);
extern
GBytes * g_variant_get_data_as_bytes (GVariant *value);
extern
void g_variant_store (GVariant *value,
                                                                         gpointer data);

extern
gchar * g_variant_print (GVariant *value,
                                                                         gboolean type_annotate);
extern
GString * g_variant_print_string (GVariant *value,
                                                                         GString *string,
                                                                         gboolean type_annotate);

extern
guint g_variant_hash (gconstpointer value);
extern
gboolean g_variant_equal (gconstpointer one,
                                                                         gconstpointer two);

extern
GVariant * g_variant_get_normal_form (GVariant *value);
extern
gboolean g_variant_is_normal_form (GVariant *value);
extern
GVariant * g_variant_byteswap (GVariant *value);

extern
GVariant * g_variant_new_from_bytes (const GVariantType *type,
                                                                         GBytes *bytes,
                                                                         gboolean trusted);
extern
GVariant * g_variant_new_from_data (const GVariantType *type,
                                                                         gconstpointer data,
                                                                         gsize size,
                                                                         gboolean trusted,
                                                                         GDestroyNotify notify,
                                                                         gpointer user_data);

typedef struct _GVariantIter GVariantIter;
struct _GVariantIter {

  gsize x[16];
};

extern
GVariantIter * g_variant_iter_new (GVariant *value);
extern
gsize g_variant_iter_init (GVariantIter *iter,
                                                                         GVariant *value);
extern
GVariantIter * g_variant_iter_copy (GVariantIter *iter);
extern
gsize g_variant_iter_n_children (GVariantIter *iter);
extern
void g_variant_iter_free (GVariantIter *iter);
extern
GVariant * g_variant_iter_next_value (GVariantIter *iter);
extern
gboolean g_variant_iter_next (GVariantIter *iter,
                                                                         const gchar *format_string,
                                                                         ...);
extern
gboolean g_variant_iter_loop (GVariantIter *iter,
                                                                         const gchar *format_string,
                                                                         ...);


typedef struct _GVariantBuilder GVariantBuilder;
struct _GVariantBuilder {

  gsize x[16];
};

typedef enum
{
  G_VARIANT_PARSE_ERROR_FAILED,
  G_VARIANT_PARSE_ERROR_BASIC_TYPE_EXPECTED,
  G_VARIANT_PARSE_ERROR_CANNOT_INFER_TYPE,
  G_VARIANT_PARSE_ERROR_DEFINITE_TYPE_EXPECTED,
  G_VARIANT_PARSE_ERROR_INPUT_NOT_AT_END,
  G_VARIANT_PARSE_ERROR_INVALID_CHARACTER,
  G_VARIANT_PARSE_ERROR_INVALID_FORMAT_STRING,
  G_VARIANT_PARSE_ERROR_INVALID_OBJECT_PATH,
  G_VARIANT_PARSE_ERROR_INVALID_SIGNATURE,
  G_VARIANT_PARSE_ERROR_INVALID_TYPE_STRING,
  G_VARIANT_PARSE_ERROR_NO_COMMON_TYPE,
  G_VARIANT_PARSE_ERROR_NUMBER_OUT_OF_RANGE,
  G_VARIANT_PARSE_ERROR_NUMBER_TOO_BIG,
  G_VARIANT_PARSE_ERROR_TYPE_ERROR,
  G_VARIANT_PARSE_ERROR_UNEXPECTED_TOKEN,
  G_VARIANT_PARSE_ERROR_UNKNOWN_KEYWORD,
  G_VARIANT_PARSE_ERROR_UNTERMINATED_STRING_CONSTANT,
  G_VARIANT_PARSE_ERROR_VALUE_EXPECTED
} GVariantParseError;


__attribute__((__deprecated__)) extern
GQuark g_variant_parser_get_error_quark (void);

extern
GQuark g_variant_parse_error_quark (void);

extern
GVariantBuilder * g_variant_builder_new (const GVariantType *type);
extern
void g_variant_builder_unref (GVariantBuilder *builder);
extern
GVariantBuilder * g_variant_builder_ref (GVariantBuilder *builder);
extern
void g_variant_builder_init (GVariantBuilder *builder,
                                                                         const GVariantType *type);
extern
GVariant * g_variant_builder_end (GVariantBuilder *builder);
extern
void g_variant_builder_clear (GVariantBuilder *builder);
extern
void g_variant_builder_open (GVariantBuilder *builder,
                                                                         const GVariantType *type);
extern
void g_variant_builder_close (GVariantBuilder *builder);
extern
void g_variant_builder_add_value (GVariantBuilder *builder,
                                                                         GVariant *value);
extern
void g_variant_builder_add (GVariantBuilder *builder,
                                                                         const gchar *format_string,
                                                                         ...);
extern
void g_variant_builder_add_parsed (GVariantBuilder *builder,
                                                                         const gchar *format,
                                                                         ...);

extern
GVariant * g_variant_new (const gchar *format_string,
                                                                         ...);
extern
void g_variant_get (GVariant *value,
                                                                         const gchar *format_string,
                                                                         ...);
extern
GVariant * g_variant_new_va (const gchar *format_string,
                                                                         const gchar **endptr,
                                                                         va_list *app);
extern
void g_variant_get_va (GVariant *value,
                                                                         const gchar *format_string,
                                                                         const gchar **endptr,
                                                                         va_list *app);
extern
gboolean g_variant_check_format_string (GVariant *value,
                                                                         const gchar *format_string,
                                                                         gboolean copy_only);

extern
GVariant * g_variant_parse (const GVariantType *type,
                                                                         const gchar *text,
                                                                         const gchar *limit,
                                                                         const gchar **endptr,
                                                                         GError **error);
extern
GVariant * g_variant_new_parsed (const gchar *format,
                                                                         ...);
extern
GVariant * g_variant_new_parsed_va (const gchar *format,
                                                                         va_list *app);

extern
gchar * g_variant_parse_error_print_context (GError *error,
                                                                         const gchar *source_str);

extern
gint g_variant_compare (gconstpointer one,
                                                                         gconstpointer two);

typedef struct _GVariantDict GVariantDict;
struct _GVariantDict {

  gsize x[16];
};

extern
GVariantDict * g_variant_dict_new (GVariant *from_asv);

extern
void g_variant_dict_init (GVariantDict *dict,
                                                                         GVariant *from_asv);

extern
gboolean g_variant_dict_lookup (GVariantDict *dict,
                                                                         const gchar *key,
                                                                         const gchar *format_string,
                                                                         ...);
extern
GVariant * g_variant_dict_lookup_value (GVariantDict *dict,
                                                                         const gchar *key,
                                                                         const GVariantType *expected_type);
extern
gboolean g_variant_dict_contains (GVariantDict *dict,
                                                                         const gchar *key);
extern
void g_variant_dict_insert (GVariantDict *dict,
                                                                         const gchar *key,
                                                                         const gchar *format_string,
                                                                         ...);
extern
void g_variant_dict_insert_value (GVariantDict *dict,
                                                                         const gchar *key,
                                                                         GVariant *value);
extern
gboolean g_variant_dict_remove (GVariantDict *dict,
                                                                         const gchar *key);
extern
void g_variant_dict_clear (GVariantDict *dict);
extern
GVariant * g_variant_dict_end (GVariantDict *dict);
extern
GVariantDict * g_variant_dict_ref (GVariantDict *dict);
extern
void g_variant_dict_unref (GVariantDict *dict);
# 95 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/gversion.h" 1
# 36 "/usr/include/glib-2.0/glib/gversion.h"
extern const guint glib_major_version;
extern const guint glib_minor_version;
extern const guint glib_micro_version;
extern const guint glib_interface_age;
extern const guint glib_binary_age;

extern
const gchar * glib_check_version (guint required_major,
                                  guint required_minor,
                                  guint required_micro);
# 96 "/usr/include/glib-2.0/glib.h" 2






# 1 "/usr/include/glib-2.0/glib/deprecated/gallocator.h" 1
# 27 "/usr/include/glib-2.0/glib/deprecated/gallocator.h"
typedef struct _GAllocator GAllocator;
typedef struct _GMemChunk GMemChunk;
# 42 "/usr/include/glib-2.0/glib/deprecated/gallocator.h"
__attribute__((__deprecated__)) extern
GMemChunk * g_mem_chunk_new (const gchar *name,
                                         gint atom_size,
                                         gsize area_size,
                                         gint type);
__attribute__((__deprecated__)) extern
void g_mem_chunk_destroy (GMemChunk *mem_chunk);
__attribute__((__deprecated__)) extern
gpointer g_mem_chunk_alloc (GMemChunk *mem_chunk);
__attribute__((__deprecated__)) extern
gpointer g_mem_chunk_alloc0 (GMemChunk *mem_chunk);
__attribute__((__deprecated__)) extern
void g_mem_chunk_free (GMemChunk *mem_chunk,
                                         gpointer mem);
__attribute__((__deprecated__)) extern
void g_mem_chunk_clean (GMemChunk *mem_chunk);
__attribute__((__deprecated__)) extern
void g_mem_chunk_reset (GMemChunk *mem_chunk);
__attribute__((__deprecated__)) extern
void g_mem_chunk_print (GMemChunk *mem_chunk);
__attribute__((__deprecated__)) extern
void g_mem_chunk_info (void);
__attribute__((__deprecated__)) extern
void g_blow_chunks (void);


__attribute__((__deprecated__)) extern
GAllocator * g_allocator_new (const gchar *name,
                                         guint n_preallocs);
__attribute__((__deprecated__)) extern
void g_allocator_free (GAllocator *allocator);
__attribute__((__deprecated__)) extern
void g_list_push_allocator (GAllocator *allocator);
__attribute__((__deprecated__)) extern
void g_list_pop_allocator (void);
__attribute__((__deprecated__)) extern
void g_slist_push_allocator (GAllocator *allocator);
__attribute__((__deprecated__)) extern
void g_slist_pop_allocator (void);
__attribute__((__deprecated__)) extern
void g_node_push_allocator (GAllocator *allocator);
__attribute__((__deprecated__)) extern
void g_node_pop_allocator (void);
# 103 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/deprecated/gcache.h" 1
# 38 "/usr/include/glib-2.0/glib/deprecated/gcache.h"
typedef struct _GCache GCache;

typedef gpointer (*GCacheNewFunc) (gpointer key);
typedef gpointer (*GCacheDupFunc) (gpointer value);
typedef void (*GCacheDestroyFunc) (gpointer value);



__attribute__((__deprecated__)) extern
GCache* g_cache_new (GCacheNewFunc value_new_func,
                                GCacheDestroyFunc value_destroy_func,
                                GCacheDupFunc key_dup_func,
                                GCacheDestroyFunc key_destroy_func,
                                GHashFunc hash_key_func,
                                GHashFunc hash_value_func,
                                GEqualFunc key_equal_func);
__attribute__((__deprecated__)) extern
void g_cache_destroy (GCache *cache);
__attribute__((__deprecated__)) extern
gpointer g_cache_insert (GCache *cache,
                                gpointer key);
__attribute__((__deprecated__)) extern
void g_cache_remove (GCache *cache,
                                gconstpointer value);
__attribute__((__deprecated__)) extern
void g_cache_key_foreach (GCache *cache,
                                GHFunc func,
                                gpointer user_data);
__attribute__((__deprecated__)) extern
void g_cache_value_foreach (GCache *cache,
                                GHFunc func,
                                gpointer user_data);
# 104 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/deprecated/gcompletion.h" 1
# 36 "/usr/include/glib-2.0/glib/deprecated/gcompletion.h"
typedef struct _GCompletion GCompletion;

typedef gchar* (*GCompletionFunc) (gpointer);




typedef gint (*GCompletionStrncmpFunc) (const gchar *s1,
                                        const gchar *s2,
                                        gsize n);

struct _GCompletion
{
  GList* items;
  GCompletionFunc func;

  gchar* prefix;
  GList* cache;
  GCompletionStrncmpFunc strncmp_func;
};

__attribute__((__deprecated__)) extern
GCompletion* g_completion_new (GCompletionFunc func);
__attribute__((__deprecated__)) extern
void g_completion_add_items (GCompletion* cmp,
                                         GList* items);
__attribute__((__deprecated__)) extern
void g_completion_remove_items (GCompletion* cmp,
                                         GList* items);
__attribute__((__deprecated__)) extern
void g_completion_clear_items (GCompletion* cmp);
__attribute__((__deprecated__)) extern
GList* g_completion_complete (GCompletion* cmp,
                                         const gchar* prefix,
                                         gchar** new_prefix);
__attribute__((__deprecated__)) extern
GList* g_completion_complete_utf8 (GCompletion *cmp,
                                         const gchar* prefix,
                                         gchar** new_prefix);
__attribute__((__deprecated__)) extern
void g_completion_set_compare (GCompletion *cmp,
                                         GCompletionStrncmpFunc strncmp_func);
__attribute__((__deprecated__)) extern
void g_completion_free (GCompletion* cmp);
# 105 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/deprecated/gmain.h" 1
# 106 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/deprecated/grel.h" 1
# 36 "/usr/include/glib-2.0/glib/deprecated/grel.h"
typedef struct _GRelation GRelation;
typedef struct _GTuples GTuples;

struct _GTuples
{
  guint len;
};
# 67 "/usr/include/glib-2.0/glib/deprecated/grel.h"
__attribute__((__deprecated__)) extern
GRelation* g_relation_new (gint fields);
__attribute__((__deprecated__)) extern
void g_relation_destroy (GRelation *relation);
__attribute__((__deprecated__)) extern
void g_relation_index (GRelation *relation,
                               gint field,
                               GHashFunc hash_func,
                               GEqualFunc key_equal_func);
__attribute__((__deprecated__)) extern
void g_relation_insert (GRelation *relation,
                               ...);
__attribute__((__deprecated__)) extern
gint g_relation_delete (GRelation *relation,
                               gconstpointer key,
                               gint field);
__attribute__((__deprecated__)) extern
GTuples* g_relation_select (GRelation *relation,
                               gconstpointer key,
                               gint field);
__attribute__((__deprecated__)) extern
gint g_relation_count (GRelation *relation,
                               gconstpointer key,
                               gint field);
__attribute__((__deprecated__)) extern
gboolean g_relation_exists (GRelation *relation,
                               ...);
__attribute__((__deprecated__)) extern
void g_relation_print (GRelation *relation);
__attribute__((__deprecated__)) extern
void g_tuples_destroy (GTuples *tuples);
__attribute__((__deprecated__)) extern
gpointer g_tuples_index (GTuples *tuples,
                               gint index_,
                               gint field);
# 107 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/deprecated/gthread.h" 1
# 38 "/usr/include/glib-2.0/glib/deprecated/gthread.h"
typedef enum
{
  G_THREAD_PRIORITY_LOW,
  G_THREAD_PRIORITY_NORMAL,
  G_THREAD_PRIORITY_HIGH,
  G_THREAD_PRIORITY_URGENT
} GThreadPriority;



struct _GThread
{

  GThreadFunc func;
  gpointer data;
  gboolean joinable;
  GThreadPriority priority;
};



typedef struct _GThreadFunctions GThreadFunctions;
struct _GThreadFunctions
{
  GMutex* (*mutex_new) (void);
  void (*mutex_lock) (GMutex *mutex);
  gboolean (*mutex_trylock) (GMutex *mutex);
  void (*mutex_unlock) (GMutex *mutex);
  void (*mutex_free) (GMutex *mutex);
  GCond* (*cond_new) (void);
  void (*cond_signal) (GCond *cond);
  void (*cond_broadcast) (GCond *cond);
  void (*cond_wait) (GCond *cond,
                                   GMutex *mutex);
  gboolean (*cond_timed_wait) (GCond *cond,
                                   GMutex *mutex,
                                   GTimeVal *end_time);
  void (*cond_free) (GCond *cond);
  GPrivate* (*private_new) (GDestroyNotify destructor);
  gpointer (*private_get) (GPrivate *private_key);
  void (*private_set) (GPrivate *private_key,
                                   gpointer data);
  void (*thread_create) (GThreadFunc func,
                                   gpointer data,
                                   gulong stack_size,
                                   gboolean joinable,
                                   gboolean bound,
                                   GThreadPriority priority,
                                   gpointer thread,
                                   GError **error);
  void (*thread_yield) (void);
  void (*thread_join) (gpointer thread);
  void (*thread_exit) (void);
  void (*thread_set_priority)(gpointer thread,
                                   GThreadPriority priority);
  void (*thread_self) (gpointer thread);
  gboolean (*thread_equal) (gpointer thread1,
                                   gpointer thread2);
};

extern GThreadFunctions g_thread_functions_for_glib_use;
extern gboolean g_thread_use_default_impl;

extern guint64 (*g_thread_gettime) (void);

__attribute__((__deprecated__)) extern
GThread *g_thread_create (GThreadFunc func,
                                gpointer data,
                                gboolean joinable,
                                GError **error);

__attribute__((__deprecated__)) extern
GThread *g_thread_create_full (GThreadFunc func,
                                gpointer data,
                                gulong stack_size,
                                gboolean joinable,
                                gboolean bound,
                                GThreadPriority priority,
                                GError **error);

__attribute__((__deprecated__)) extern
void g_thread_set_priority (GThread *thread,
                                GThreadPriority priority);

__attribute__((__deprecated__)) extern
void g_thread_foreach (GFunc thread_func,
                                gpointer user_data);



# 1 "/usr/include/sys/types.h" 1 3 4
# 33 "/usr/include/sys/types.h" 3 4
typedef __u_char u_char;
typedef __u_short u_short;
typedef __u_int u_int;
typedef __u_long u_long;
typedef __quad_t quad_t;
typedef __u_quad_t u_quad_t;
typedef __fsid_t fsid_t;




typedef __loff_t loff_t;



typedef __ino_t ino_t;
# 60 "/usr/include/sys/types.h" 3 4
typedef __dev_t dev_t;




typedef __gid_t gid_t;




typedef __mode_t mode_t;




typedef __nlink_t nlink_t;
# 86 "/usr/include/sys/types.h" 3 4
typedef __off_t off_t;
# 104 "/usr/include/sys/types.h" 3 4
typedef __id_t id_t;




typedef __ssize_t ssize_t;





typedef __daddr_t daddr_t;
typedef __caddr_t caddr_t;





typedef __key_t key_t;
# 146 "/usr/include/sys/types.h" 3 4
# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 1 3 4
# 147 "/usr/include/sys/types.h" 2 3 4



typedef unsigned long int ulong;
typedef unsigned short int ushort;
typedef unsigned int uint;
# 194 "/usr/include/sys/types.h" 3 4
typedef int int8_t __attribute__ ((__mode__ (__QI__)));
typedef int int16_t __attribute__ ((__mode__ (__HI__)));
typedef int int32_t __attribute__ ((__mode__ (__SI__)));
typedef int int64_t __attribute__ ((__mode__ (__DI__)));


typedef unsigned int u_int8_t __attribute__ ((__mode__ (__QI__)));
typedef unsigned int u_int16_t __attribute__ ((__mode__ (__HI__)));
typedef unsigned int u_int32_t __attribute__ ((__mode__ (__SI__)));
typedef unsigned int u_int64_t __attribute__ ((__mode__ (__DI__)));

typedef int register_t __attribute__ ((__mode__ (__word__)));
# 216 "/usr/include/sys/types.h" 3 4
# 1 "/usr/include/endian.h" 1 3 4
# 36 "/usr/include/endian.h" 3 4
# 1 "/usr/include/bits/endian.h" 1 3 4
# 37 "/usr/include/endian.h" 2 3 4
# 60 "/usr/include/endian.h" 3 4
# 1 "/usr/include/bits/byteswap.h" 1 3 4
# 28 "/usr/include/bits/byteswap.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 29 "/usr/include/bits/byteswap.h" 2 3 4






# 1 "/usr/include/bits/byteswap-16.h" 1 3 4
# 36 "/usr/include/bits/byteswap.h" 2 3 4
# 61 "/usr/include/endian.h" 2 3 4
# 217 "/usr/include/sys/types.h" 2 3 4


# 1 "/usr/include/sys/select.h" 1 3 4
# 30 "/usr/include/sys/select.h" 3 4
# 1 "/usr/include/bits/select.h" 1 3 4
# 22 "/usr/include/bits/select.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 23 "/usr/include/bits/select.h" 2 3 4
# 31 "/usr/include/sys/select.h" 2 3 4


# 1 "/usr/include/bits/sigset.h" 1 3 4
# 34 "/usr/include/sys/select.h" 2 3 4
# 45 "/usr/include/sys/select.h" 3 4
# 1 "/usr/include/bits/time.h" 1 3 4
# 30 "/usr/include/bits/time.h" 3 4
struct timeval
  {
    __time_t tv_sec;
    __suseconds_t tv_usec;
  };
# 46 "/usr/include/sys/select.h" 2 3 4


typedef __suseconds_t suseconds_t;





typedef long int __fd_mask;
# 64 "/usr/include/sys/select.h" 3 4
typedef struct
  {






    __fd_mask __fds_bits[1024 / (8 * (int) sizeof (__fd_mask))];


  } fd_set;






typedef __fd_mask fd_mask;
# 106 "/usr/include/sys/select.h" 3 4
extern int select (int __nfds, fd_set *__restrict __readfds,
     fd_set *__restrict __writefds,
     fd_set *__restrict __exceptfds,
     struct timeval *__restrict __timeout);
# 118 "/usr/include/sys/select.h" 3 4
extern int pselect (int __nfds, fd_set *__restrict __readfds,
      fd_set *__restrict __writefds,
      fd_set *__restrict __exceptfds,
      const struct timespec *__restrict __timeout,
      const __sigset_t *__restrict __sigmask);
# 220 "/usr/include/sys/types.h" 2 3 4


# 1 "/usr/include/sys/sysmacros.h" 1 3 4
# 31 "/usr/include/sys/sysmacros.h" 3 4
__extension__
extern unsigned int gnu_dev_major (unsigned long long int __dev)
     __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
__extension__
extern unsigned int gnu_dev_minor (unsigned long long int __dev)
     __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
__extension__
extern unsigned long long int gnu_dev_makedev (unsigned int __major,
            unsigned int __minor)
     __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
# 223 "/usr/include/sys/types.h" 2 3 4





typedef __blksize_t blksize_t;






typedef __blkcnt_t blkcnt_t;



typedef __fsblkcnt_t fsblkcnt_t;



typedef __fsfilcnt_t fsfilcnt_t;
# 128 "/usr/include/glib-2.0/glib/deprecated/gthread.h" 2
# 1 "/usr/include/pthread.h" 1 3 4
# 23 "/usr/include/pthread.h" 3 4
# 1 "/usr/include/sched.h" 1 3 4
# 29 "/usr/include/sched.h" 3 4
# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 1 3 4
# 30 "/usr/include/sched.h" 2 3 4
# 42 "/usr/include/sched.h" 3 4
# 1 "/usr/include/bits/sched.h" 1 3 4
# 73 "/usr/include/bits/sched.h" 3 4
struct sched_param
  {
    int __sched_priority;
  };
# 104 "/usr/include/bits/sched.h" 3 4
struct __sched_param
  {
    int __sched_priority;
  };
# 119 "/usr/include/bits/sched.h" 3 4
typedef unsigned long int __cpu_mask;






typedef struct
{
  __cpu_mask __bits[1024 / (8 * sizeof (__cpu_mask))];
} cpu_set_t;
# 204 "/usr/include/bits/sched.h" 3 4
extern int __sched_cpucount (size_t __setsize, const cpu_set_t *__setp)
  __attribute__ ((__nothrow__ ));
extern cpu_set_t *__sched_cpualloc (size_t __count) __attribute__ ((__nothrow__ )) ;
extern void __sched_cpufree (cpu_set_t *__set) __attribute__ ((__nothrow__ ));
# 43 "/usr/include/sched.h" 2 3 4







extern int sched_setparam (__pid_t __pid, const struct sched_param *__param)
     __attribute__ ((__nothrow__ ));


extern int sched_getparam (__pid_t __pid, struct sched_param *__param) __attribute__ ((__nothrow__ ));


extern int sched_setscheduler (__pid_t __pid, int __policy,
          const struct sched_param *__param) __attribute__ ((__nothrow__ ));


extern int sched_getscheduler (__pid_t __pid) __attribute__ ((__nothrow__ ));


extern int sched_yield (void) __attribute__ ((__nothrow__ ));


extern int sched_get_priority_max (int __algorithm) __attribute__ ((__nothrow__ ));


extern int sched_get_priority_min (int __algorithm) __attribute__ ((__nothrow__ ));


extern int sched_rr_get_interval (__pid_t __pid, struct timespec *__t) __attribute__ ((__nothrow__ ));
# 24 "/usr/include/pthread.h" 2 3 4



# 1 "/usr/include/bits/setjmp.h" 1 3 4
# 26 "/usr/include/bits/setjmp.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 27 "/usr/include/bits/setjmp.h" 2 3 4




typedef long int __jmp_buf[8];
# 28 "/usr/include/pthread.h" 2 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 29 "/usr/include/pthread.h" 2 3 4



enum
{
  PTHREAD_CREATE_JOINABLE,

  PTHREAD_CREATE_DETACHED

};



enum
{
  PTHREAD_MUTEX_TIMED_NP,
  PTHREAD_MUTEX_RECURSIVE_NP,
  PTHREAD_MUTEX_ERRORCHECK_NP,
  PTHREAD_MUTEX_ADAPTIVE_NP

  ,
  PTHREAD_MUTEX_NORMAL = PTHREAD_MUTEX_TIMED_NP,
  PTHREAD_MUTEX_RECURSIVE = PTHREAD_MUTEX_RECURSIVE_NP,
  PTHREAD_MUTEX_ERRORCHECK = PTHREAD_MUTEX_ERRORCHECK_NP,
  PTHREAD_MUTEX_DEFAULT = PTHREAD_MUTEX_NORMAL





};




enum
{
  PTHREAD_MUTEX_STALLED,
  PTHREAD_MUTEX_STALLED_NP = PTHREAD_MUTEX_STALLED,
  PTHREAD_MUTEX_ROBUST,
  PTHREAD_MUTEX_ROBUST_NP = PTHREAD_MUTEX_ROBUST
};





enum
{
  PTHREAD_PRIO_NONE,
  PTHREAD_PRIO_INHERIT,
  PTHREAD_PRIO_PROTECT
};
# 113 "/usr/include/pthread.h" 3 4
enum
{
  PTHREAD_RWLOCK_PREFER_READER_NP,
  PTHREAD_RWLOCK_PREFER_WRITER_NP,
  PTHREAD_RWLOCK_PREFER_WRITER_NONRECURSIVE_NP,
  PTHREAD_RWLOCK_DEFAULT_NP = PTHREAD_RWLOCK_PREFER_READER_NP
};
# 154 "/usr/include/pthread.h" 3 4
enum
{
  PTHREAD_INHERIT_SCHED,

  PTHREAD_EXPLICIT_SCHED

};



enum
{
  PTHREAD_SCOPE_SYSTEM,

  PTHREAD_SCOPE_PROCESS

};



enum
{
  PTHREAD_PROCESS_PRIVATE,

  PTHREAD_PROCESS_SHARED

};
# 189 "/usr/include/pthread.h" 3 4
struct _pthread_cleanup_buffer
{
  void (*__routine) (void *);
  void *__arg;
  int __canceltype;
  struct _pthread_cleanup_buffer *__prev;
};


enum
{
  PTHREAD_CANCEL_ENABLE,

  PTHREAD_CANCEL_DISABLE

};
enum
{
  PTHREAD_CANCEL_DEFERRED,

  PTHREAD_CANCEL_ASYNCHRONOUS

};
# 232 "/usr/include/pthread.h" 3 4
extern int pthread_create (pthread_t *__restrict __newthread,
      const pthread_attr_t *__restrict __attr,
      void *(*__start_routine) (void *),
      void *__restrict __arg) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 3)));





extern void pthread_exit (void *__retval) __attribute__ ((__noreturn__));







extern int pthread_join (pthread_t __th, void **__thread_return);
# 270 "/usr/include/pthread.h" 3 4
extern int pthread_detach (pthread_t __th) __attribute__ ((__nothrow__ ));



extern pthread_t pthread_self (void) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));


extern int pthread_equal (pthread_t __thread1, pthread_t __thread2)
  __attribute__ ((__nothrow__ )) __attribute__ ((__const__));







extern int pthread_attr_init (pthread_attr_t *__attr) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int pthread_attr_destroy (pthread_attr_t *__attr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int pthread_attr_getdetachstate (const pthread_attr_t *__attr,
     int *__detachstate)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_attr_setdetachstate (pthread_attr_t *__attr,
     int __detachstate)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));



extern int pthread_attr_getguardsize (const pthread_attr_t *__attr,
          size_t *__guardsize)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_attr_setguardsize (pthread_attr_t *__attr,
          size_t __guardsize)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));



extern int pthread_attr_getschedparam (const pthread_attr_t *__restrict __attr,
           struct sched_param *__restrict __param)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_attr_setschedparam (pthread_attr_t *__restrict __attr,
           const struct sched_param *__restrict
           __param) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_attr_getschedpolicy (const pthread_attr_t *__restrict
     __attr, int *__restrict __policy)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_attr_setschedpolicy (pthread_attr_t *__attr, int __policy)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int pthread_attr_getinheritsched (const pthread_attr_t *__restrict
      __attr, int *__restrict __inherit)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_attr_setinheritsched (pthread_attr_t *__attr,
      int __inherit)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));



extern int pthread_attr_getscope (const pthread_attr_t *__restrict __attr,
      int *__restrict __scope)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_attr_setscope (pthread_attr_t *__attr, int __scope)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int pthread_attr_getstackaddr (const pthread_attr_t *__restrict
          __attr, void **__restrict __stackaddr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2))) __attribute__ ((__deprecated__));





extern int pthread_attr_setstackaddr (pthread_attr_t *__attr,
          void *__stackaddr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) __attribute__ ((__deprecated__));


extern int pthread_attr_getstacksize (const pthread_attr_t *__restrict
          __attr, size_t *__restrict __stacksize)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));




extern int pthread_attr_setstacksize (pthread_attr_t *__attr,
          size_t __stacksize)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));



extern int pthread_attr_getstack (const pthread_attr_t *__restrict __attr,
      void **__restrict __stackaddr,
      size_t *__restrict __stacksize)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2, 3)));




extern int pthread_attr_setstack (pthread_attr_t *__attr, void *__stackaddr,
      size_t __stacksize) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
# 420 "/usr/include/pthread.h" 3 4
extern int pthread_setschedparam (pthread_t __target_thread, int __policy,
      const struct sched_param *__param)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (3)));


extern int pthread_getschedparam (pthread_t __target_thread,
      int *__restrict __policy,
      struct sched_param *__restrict __param)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2, 3)));


extern int pthread_setschedprio (pthread_t __target_thread, int __prio)
     __attribute__ ((__nothrow__ ));
# 485 "/usr/include/pthread.h" 3 4
extern int pthread_once (pthread_once_t *__once_control,
    void (*__init_routine) (void)) __attribute__ ((__nonnull__ (1, 2)));
# 497 "/usr/include/pthread.h" 3 4
extern int pthread_setcancelstate (int __state, int *__oldstate);



extern int pthread_setcanceltype (int __type, int *__oldtype);


extern int pthread_cancel (pthread_t __th);




extern void pthread_testcancel (void);




typedef struct
{
  struct
  {
    __jmp_buf __cancel_jmp_buf;
    int __mask_was_saved;
  } __cancel_jmp_buf[1];
  void *__pad[4];
} __pthread_unwind_buf_t __attribute__ ((__aligned__));
# 531 "/usr/include/pthread.h" 3 4
struct __pthread_cleanup_frame
{
  void (*__cancel_routine) (void *);
  void *__cancel_arg;
  int __do_it;
  int __cancel_type;
};
# 671 "/usr/include/pthread.h" 3 4
extern void __pthread_register_cancel (__pthread_unwind_buf_t *__buf)
                            ;
# 683 "/usr/include/pthread.h" 3 4
extern void __pthread_unregister_cancel (__pthread_unwind_buf_t *__buf)
                         ;
# 724 "/usr/include/pthread.h" 3 4
extern void __pthread_unwind_next (__pthread_unwind_buf_t *__buf)
                             __attribute__ ((__noreturn__))

     __attribute__ ((__weak__))

     ;



struct __jmp_buf_tag;
extern int __sigsetjmp (struct __jmp_buf_tag *__env, int __savemask) __attribute__ ((__nothrow__));





extern int pthread_mutex_init (pthread_mutex_t *__mutex,
          const pthread_mutexattr_t *__mutexattr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int pthread_mutex_destroy (pthread_mutex_t *__mutex)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int pthread_mutex_trylock (pthread_mutex_t *__mutex)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_mutex_lock (pthread_mutex_t *__mutex)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));



extern int pthread_mutex_timedlock (pthread_mutex_t *__restrict __mutex,
        const struct timespec *__restrict
        __abstime) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2)));



extern int pthread_mutex_unlock (pthread_mutex_t *__mutex)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));



extern int pthread_mutex_getprioceiling (const pthread_mutex_t *
      __restrict __mutex,
      int *__restrict __prioceiling)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));



extern int pthread_mutex_setprioceiling (pthread_mutex_t *__restrict __mutex,
      int __prioceiling,
      int *__restrict __old_ceiling)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 3)));




extern int pthread_mutex_consistent (pthread_mutex_t *__mutex)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
# 797 "/usr/include/pthread.h" 3 4
extern int pthread_mutexattr_init (pthread_mutexattr_t *__attr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int pthread_mutexattr_destroy (pthread_mutexattr_t *__attr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int pthread_mutexattr_getpshared (const pthread_mutexattr_t *
      __restrict __attr,
      int *__restrict __pshared)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_mutexattr_setpshared (pthread_mutexattr_t *__attr,
      int __pshared)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));



extern int pthread_mutexattr_gettype (const pthread_mutexattr_t *__restrict
          __attr, int *__restrict __kind)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));




extern int pthread_mutexattr_settype (pthread_mutexattr_t *__attr, int __kind)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));



extern int pthread_mutexattr_getprotocol (const pthread_mutexattr_t *
       __restrict __attr,
       int *__restrict __protocol)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));



extern int pthread_mutexattr_setprotocol (pthread_mutexattr_t *__attr,
       int __protocol)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int pthread_mutexattr_getprioceiling (const pthread_mutexattr_t *
          __restrict __attr,
          int *__restrict __prioceiling)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_mutexattr_setprioceiling (pthread_mutexattr_t *__attr,
          int __prioceiling)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));



extern int pthread_mutexattr_getrobust (const pthread_mutexattr_t *__attr,
     int *__robustness)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));







extern int pthread_mutexattr_setrobust (pthread_mutexattr_t *__attr,
     int __robustness)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
# 879 "/usr/include/pthread.h" 3 4
extern int pthread_rwlock_init (pthread_rwlock_t *__restrict __rwlock,
    const pthread_rwlockattr_t *__restrict
    __attr) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int pthread_rwlock_destroy (pthread_rwlock_t *__rwlock)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int pthread_rwlock_rdlock (pthread_rwlock_t *__rwlock)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_rwlock_tryrdlock (pthread_rwlock_t *__rwlock)
  __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));



extern int pthread_rwlock_timedrdlock (pthread_rwlock_t *__restrict __rwlock,
           const struct timespec *__restrict
           __abstime) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2)));



extern int pthread_rwlock_wrlock (pthread_rwlock_t *__rwlock)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_rwlock_trywrlock (pthread_rwlock_t *__rwlock)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));



extern int pthread_rwlock_timedwrlock (pthread_rwlock_t *__restrict __rwlock,
           const struct timespec *__restrict
           __abstime) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2)));



extern int pthread_rwlock_unlock (pthread_rwlock_t *__rwlock)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));





extern int pthread_rwlockattr_init (pthread_rwlockattr_t *__attr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int pthread_rwlockattr_destroy (pthread_rwlockattr_t *__attr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int pthread_rwlockattr_getpshared (const pthread_rwlockattr_t *
       __restrict __attr,
       int *__restrict __pshared)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_rwlockattr_setpshared (pthread_rwlockattr_t *__attr,
       int __pshared)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int pthread_rwlockattr_getkind_np (const pthread_rwlockattr_t *
       __restrict __attr,
       int *__restrict __pref)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_rwlockattr_setkind_np (pthread_rwlockattr_t *__attr,
       int __pref) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));







extern int pthread_cond_init (pthread_cond_t *__restrict __cond,
         const pthread_condattr_t *__restrict __cond_attr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int pthread_cond_destroy (pthread_cond_t *__cond)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int pthread_cond_signal (pthread_cond_t *__cond)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_cond_broadcast (pthread_cond_t *__cond)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));






extern int pthread_cond_wait (pthread_cond_t *__restrict __cond,
         pthread_mutex_t *__restrict __mutex)
     __attribute__ ((__nonnull__ (1, 2)));
# 991 "/usr/include/pthread.h" 3 4
extern int pthread_cond_timedwait (pthread_cond_t *__restrict __cond,
       pthread_mutex_t *__restrict __mutex,
       const struct timespec *__restrict __abstime)
     __attribute__ ((__nonnull__ (1, 2, 3)));




extern int pthread_condattr_init (pthread_condattr_t *__attr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int pthread_condattr_destroy (pthread_condattr_t *__attr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int pthread_condattr_getpshared (const pthread_condattr_t *
     __restrict __attr,
     int *__restrict __pshared)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_condattr_setpshared (pthread_condattr_t *__attr,
     int __pshared) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));



extern int pthread_condattr_getclock (const pthread_condattr_t *
          __restrict __attr,
          __clockid_t *__restrict __clock_id)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_condattr_setclock (pthread_condattr_t *__attr,
          __clockid_t __clock_id)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
# 1035 "/usr/include/pthread.h" 3 4
extern int pthread_spin_init (pthread_spinlock_t *__lock, int __pshared)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int pthread_spin_destroy (pthread_spinlock_t *__lock)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int pthread_spin_lock (pthread_spinlock_t *__lock)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_spin_trylock (pthread_spinlock_t *__lock)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_spin_unlock (pthread_spinlock_t *__lock)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));






extern int pthread_barrier_init (pthread_barrier_t *__restrict __barrier,
     const pthread_barrierattr_t *__restrict
     __attr, unsigned int __count)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int pthread_barrier_destroy (pthread_barrier_t *__barrier)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int pthread_barrier_wait (pthread_barrier_t *__barrier)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));



extern int pthread_barrierattr_init (pthread_barrierattr_t *__attr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int pthread_barrierattr_destroy (pthread_barrierattr_t *__attr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int pthread_barrierattr_getpshared (const pthread_barrierattr_t *
        __restrict __attr,
        int *__restrict __pshared)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_barrierattr_setpshared (pthread_barrierattr_t *__attr,
        int __pshared)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
# 1102 "/usr/include/pthread.h" 3 4
extern int pthread_key_create (pthread_key_t *__key,
          void (*__destr_function) (void *))
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int pthread_key_delete (pthread_key_t __key) __attribute__ ((__nothrow__ ));


extern void *pthread_getspecific (pthread_key_t __key) __attribute__ ((__nothrow__ ));


extern int pthread_setspecific (pthread_key_t __key,
    const void *__pointer) __attribute__ ((__nothrow__ )) ;




extern int pthread_getcpuclockid (pthread_t __thread_id,
      __clockid_t *__clock_id)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));
# 1136 "/usr/include/pthread.h" 3 4
extern int pthread_atfork (void (*__prepare) (void),
      void (*__parent) (void),
      void (*__child) (void)) __attribute__ ((__nothrow__ ));
# 129 "/usr/include/glib-2.0/glib/deprecated/gthread.h" 2




typedef struct
{
  GMutex *mutex;


  pthread_mutex_t unused;

} GStaticMutex;
# 149 "/usr/include/glib-2.0/glib/deprecated/gthread.h"
__attribute__((__deprecated__)) extern
void g_static_mutex_init (GStaticMutex *mutex);
__attribute__((__deprecated__)) extern
void g_static_mutex_free (GStaticMutex *mutex);
__attribute__((__deprecated__)) extern
GMutex *g_static_mutex_get_mutex_impl (GStaticMutex *mutex);

typedef struct _GStaticRecMutex GStaticRecMutex;
struct _GStaticRecMutex
{

  GStaticMutex mutex;
  guint depth;


  union {



    pthread_t owner;

    gdouble dummy;
  } unused;
};


__attribute__((__deprecated__)) extern
void g_static_rec_mutex_init (GStaticRecMutex *mutex);

__attribute__((__deprecated__)) extern
void g_static_rec_mutex_lock (GStaticRecMutex *mutex);

__attribute__((__deprecated__)) extern
gboolean g_static_rec_mutex_trylock (GStaticRecMutex *mutex);

__attribute__((__deprecated__)) extern
void g_static_rec_mutex_unlock (GStaticRecMutex *mutex);

__attribute__((__deprecated__)) extern
void g_static_rec_mutex_lock_full (GStaticRecMutex *mutex,
                                         guint depth);

__attribute__((__deprecated__)) extern
guint g_static_rec_mutex_unlock_full (GStaticRecMutex *mutex);

__attribute__((__deprecated__)) extern
void g_static_rec_mutex_free (GStaticRecMutex *mutex);

typedef struct _GStaticRWLock GStaticRWLock;
struct _GStaticRWLock
{

  GStaticMutex mutex;
  GCond *read_cond;
  GCond *write_cond;
  guint read_counter;
  gboolean have_writer;
  guint want_to_read;
  guint want_to_write;
};



__attribute__((__deprecated__)) extern
void g_static_rw_lock_init (GStaticRWLock *lock);

__attribute__((__deprecated__)) extern
void g_static_rw_lock_reader_lock (GStaticRWLock *lock);

__attribute__((__deprecated__)) extern
gboolean g_static_rw_lock_reader_trylock (GStaticRWLock *lock);

__attribute__((__deprecated__)) extern
void g_static_rw_lock_reader_unlock (GStaticRWLock *lock);

__attribute__((__deprecated__)) extern
void g_static_rw_lock_writer_lock (GStaticRWLock *lock);

__attribute__((__deprecated__)) extern
gboolean g_static_rw_lock_writer_trylock (GStaticRWLock *lock);

__attribute__((__deprecated__)) extern
void g_static_rw_lock_writer_unlock (GStaticRWLock *lock);

__attribute__((__deprecated__)) extern
void g_static_rw_lock_free (GStaticRWLock *lock);

__attribute__((__deprecated__)) extern
GPrivate * g_private_new (GDestroyNotify notify);

typedef struct _GStaticPrivate GStaticPrivate;
struct _GStaticPrivate
{

  guint index;
};


__attribute__((__deprecated__)) extern
void g_static_private_init (GStaticPrivate *private_key);

__attribute__((__deprecated__)) extern
gpointer g_static_private_get (GStaticPrivate *private_key);

__attribute__((__deprecated__)) extern
void g_static_private_set (GStaticPrivate *private_key,
                                          gpointer data,
                                          GDestroyNotify notify);

__attribute__((__deprecated__)) extern
void g_static_private_free (GStaticPrivate *private_key);

__attribute__((__deprecated__)) extern
gboolean g_once_init_enter_impl (volatile gsize *location);

__attribute__((__deprecated__)) extern
void g_thread_init (gpointer vtable);
__attribute__((__deprecated__)) extern
void g_thread_init_with_errorcheck_mutexes (gpointer vtable);

__attribute__((__deprecated__)) extern
gboolean g_thread_get_initialized (void);

extern gboolean g_threads_got_initialized;



__attribute__((__deprecated__)) extern
GMutex * g_mutex_new (void);
__attribute__((__deprecated__)) extern
void g_mutex_free (GMutex *mutex);
__attribute__((__deprecated__)) extern
GCond * g_cond_new (void);
__attribute__((__deprecated__)) extern
void g_cond_free (GCond *cond);
__attribute__((__deprecated__)) extern
gboolean g_cond_timed_wait (GCond *cond,
                                         GMutex *mutex,
                                         GTimeVal *timeval);
# 108 "/usr/include/glib-2.0/glib.h" 2
# 29 "/usr/include/glib-2.0/gobject/gbinding.h" 2
# 1 "/usr/include/glib-2.0/gobject/gobject.h" 1
# 24 "/usr/include/glib-2.0/gobject/gobject.h"
# 1 "/usr/include/glib-2.0/gobject/gtype.h" 1
# 382 "/usr/include/glib-2.0/gobject/gtype.h"
typedef gsize GType;



typedef struct _GValue GValue;
typedef union _GTypeCValue GTypeCValue;
typedef struct _GTypePlugin GTypePlugin;
typedef struct _GTypeClass GTypeClass;
typedef struct _GTypeInterface GTypeInterface;
typedef struct _GTypeInstance GTypeInstance;
typedef struct _GTypeInfo GTypeInfo;
typedef struct _GTypeFundamentalInfo GTypeFundamentalInfo;
typedef struct _GInterfaceInfo GInterfaceInfo;
typedef struct _GTypeValueTable GTypeValueTable;
typedef struct _GTypeQuery GTypeQuery;
# 406 "/usr/include/glib-2.0/gobject/gtype.h"
struct _GTypeClass
{

  GType g_type;
};





struct _GTypeInstance
{

  GTypeClass *g_class;
};





struct _GTypeInterface
{

  GType g_type;
  GType g_instance_type;
};
# 442 "/usr/include/glib-2.0/gobject/gtype.h"
struct _GTypeQuery
{
  GType type;
  const gchar *type_name;
  guint class_size;
  guint instance_size;
};
# 668 "/usr/include/glib-2.0/gobject/gtype.h"
typedef enum
{
  G_TYPE_DEBUG_NONE = 0,
  G_TYPE_DEBUG_OBJECTS = 1 << 0,
  G_TYPE_DEBUG_SIGNALS = 1 << 1,
  G_TYPE_DEBUG_MASK = 0x03
} GTypeDebugFlags;



__attribute__((__deprecated__)) extern
void g_type_init (void);
__attribute__((__deprecated__)) extern
void g_type_init_with_debug_flags (GTypeDebugFlags debug_flags);
extern
const gchar * g_type_name (GType type);
extern
GQuark g_type_qname (GType type);
extern
GType g_type_from_name (const gchar *name);
extern
GType g_type_parent (GType type);
extern
guint g_type_depth (GType type);
extern
GType g_type_next_base (GType leaf_type,
            GType root_type);
extern
gboolean g_type_is_a (GType type,
            GType is_a_type);
extern
gpointer g_type_class_ref (GType type);
extern
gpointer g_type_class_peek (GType type);
extern
gpointer g_type_class_peek_static (GType type);
extern
void g_type_class_unref (gpointer g_class);
extern
gpointer g_type_class_peek_parent (gpointer g_class);
extern
gpointer g_type_interface_peek (gpointer instance_class,
            GType iface_type);
extern
gpointer g_type_interface_peek_parent (gpointer g_iface);

extern
gpointer g_type_default_interface_ref (GType g_type);
extern
gpointer g_type_default_interface_peek (GType g_type);
extern
void g_type_default_interface_unref (gpointer g_iface);


extern
GType* g_type_children (GType type,
            guint *n_children);
extern
GType* g_type_interfaces (GType type,
            guint *n_interfaces);


extern
void g_type_set_qdata (GType type,
            GQuark quark,
            gpointer data);
extern
gpointer g_type_get_qdata (GType type,
            GQuark quark);
extern
void g_type_query (GType type,
            GTypeQuery *query);
# 756 "/usr/include/glib-2.0/gobject/gtype.h"
typedef void (*GBaseInitFunc) (gpointer g_class);
# 767 "/usr/include/glib-2.0/gobject/gtype.h"
typedef void (*GBaseFinalizeFunc) (gpointer g_class);
# 869 "/usr/include/glib-2.0/gobject/gtype.h"
typedef void (*GClassInitFunc) (gpointer g_class,
           gpointer class_data);
# 884 "/usr/include/glib-2.0/gobject/gtype.h"
typedef void (*GClassFinalizeFunc) (gpointer g_class,
           gpointer class_data);
# 903 "/usr/include/glib-2.0/gobject/gtype.h"
typedef void (*GInstanceInitFunc) (GTypeInstance *instance,
           gpointer g_class);
# 917 "/usr/include/glib-2.0/gobject/gtype.h"
typedef void (*GInterfaceInitFunc) (gpointer g_iface,
           gpointer iface_data);
# 928 "/usr/include/glib-2.0/gobject/gtype.h"
typedef void (*GInterfaceFinalizeFunc) (gpointer g_iface,
           gpointer iface_data);
# 948 "/usr/include/glib-2.0/gobject/gtype.h"
typedef gboolean (*GTypeClassCacheFunc) (gpointer cache_data,
           GTypeClass *g_class);
# 960 "/usr/include/glib-2.0/gobject/gtype.h"
typedef void (*GTypeInterfaceCheckFunc) (gpointer check_data,
           gpointer g_iface);
# 972 "/usr/include/glib-2.0/gobject/gtype.h"
typedef enum
{
  G_TYPE_FLAG_CLASSED = (1 << 0),
  G_TYPE_FLAG_INSTANTIATABLE = (1 << 1),
  G_TYPE_FLAG_DERIVABLE = (1 << 2),
  G_TYPE_FLAG_DEEP_DERIVABLE = (1 << 3)
} GTypeFundamentalFlags;
# 989 "/usr/include/glib-2.0/gobject/gtype.h"
typedef enum
{
  G_TYPE_FLAG_ABSTRACT = (1 << 4),
  G_TYPE_FLAG_VALUE_ABSTRACT = (1 << 5)
} GTypeFlags;
# 1025 "/usr/include/glib-2.0/gobject/gtype.h"
struct _GTypeInfo
{

  guint16 class_size;

  GBaseInitFunc base_init;
  GBaseFinalizeFunc base_finalize;


  GClassInitFunc class_init;
  GClassFinalizeFunc class_finalize;
  gconstpointer class_data;


  guint16 instance_size;
  guint16 n_preallocs;
  GInstanceInitFunc instance_init;


  const GTypeValueTable *value_table;
};







struct _GTypeFundamentalInfo
{
  GTypeFundamentalFlags type_flags;
};
# 1066 "/usr/include/glib-2.0/gobject/gtype.h"
struct _GInterfaceInfo
{
  GInterfaceInitFunc interface_init;
  GInterfaceFinalizeFunc interface_finalize;
  gpointer interface_data;
};
# 1232 "/usr/include/glib-2.0/gobject/gtype.h"
struct _GTypeValueTable
{
  void (*value_init) (GValue *value);
  void (*value_free) (GValue *value);
  void (*value_copy) (const GValue *src_value,
      GValue *dest_value);

  gpointer (*value_peek_pointer) (const GValue *value);
  const gchar *collect_format;
  gchar* (*collect_value) (GValue *value,
      guint n_collect_values,
      GTypeCValue *collect_values,
      guint collect_flags);
  const gchar *lcopy_format;
  gchar* (*lcopy_value) (const GValue *value,
      guint n_collect_values,
      GTypeCValue *collect_values,
      guint collect_flags);
};
extern
GType g_type_register_static (GType parent_type,
      const gchar *type_name,
      const GTypeInfo *info,
      GTypeFlags flags);
extern
GType g_type_register_static_simple (GType parent_type,
      const gchar *type_name,
      guint class_size,
      GClassInitFunc class_init,
      guint instance_size,
      GInstanceInitFunc instance_init,
      GTypeFlags flags);

extern
GType g_type_register_dynamic (GType parent_type,
      const gchar *type_name,
      GTypePlugin *plugin,
      GTypeFlags flags);
extern
GType g_type_register_fundamental (GType type_id,
      const gchar *type_name,
      const GTypeInfo *info,
      const GTypeFundamentalInfo *finfo,
      GTypeFlags flags);
extern
void g_type_add_interface_static (GType instance_type,
      GType interface_type,
      const GInterfaceInfo *info);
extern
void g_type_add_interface_dynamic (GType instance_type,
      GType interface_type,
      GTypePlugin *plugin);
extern
void g_type_interface_add_prerequisite (GType interface_type,
      GType prerequisite_type);
extern
GType*g_type_interface_prerequisites (GType interface_type,
      guint *n_prerequisites);
extern
void g_type_class_add_private (gpointer g_class,
                                         gsize private_size);
extern
gint g_type_add_instance_private (GType class_type,
                                         gsize private_size);
extern
gpointer g_type_instance_get_private (GTypeInstance *instance,
                                         GType private_type);
extern
void g_type_class_adjust_private_offset (gpointer g_class,
                                             gint *private_size_or_offset);

extern
void g_type_add_class_private (GType class_type,
      gsize private_size);
extern
gpointer g_type_class_get_private (GTypeClass *klass,
      GType private_type);
extern
gint g_type_class_get_instance_private_offset (gpointer g_class);

extern
void g_type_ensure (GType type);
extern
guint g_type_get_type_registration_serial (void);
# 1859 "/usr/include/glib-2.0/gobject/gtype.h"
extern
GTypePlugin* g_type_get_plugin (GType type);
extern
GTypePlugin* g_type_interface_get_plugin (GType instance_type,
       GType interface_type);
extern
GType g_type_fundamental_next (void);
extern
GType g_type_fundamental (GType type_id);
extern
GTypeInstance* g_type_create_instance (GType type);
extern
void g_type_free_instance (GTypeInstance *instance);

extern
void g_type_add_class_cache_func (gpointer cache_data,
       GTypeClassCacheFunc cache_func);
extern
void g_type_remove_class_cache_func (gpointer cache_data,
       GTypeClassCacheFunc cache_func);
extern
void g_type_class_unref_uncached (gpointer g_class);

extern
void g_type_add_interface_check (gpointer check_data,
       GTypeInterfaceCheckFunc check_func);
extern
void g_type_remove_interface_check (gpointer check_data,
       GTypeInterfaceCheckFunc check_func);

extern
GTypeValueTable* g_type_value_table_peek (GType type);



extern
gboolean g_type_check_instance (GTypeInstance *instance) __attribute__((__pure__));
extern
GTypeInstance* g_type_check_instance_cast (GTypeInstance *instance,
       GType iface_type);
extern
gboolean g_type_check_instance_is_a (GTypeInstance *instance,
       GType iface_type) __attribute__((__pure__));
extern
gboolean g_type_check_instance_is_fundamentally_a (GTypeInstance *instance,
                                                           GType fundamental_type) __attribute__((__pure__));
extern
GTypeClass* g_type_check_class_cast (GTypeClass *g_class,
       GType is_a_type);
extern
gboolean g_type_check_class_is_a (GTypeClass *g_class,
       GType is_a_type) __attribute__((__pure__));
extern
gboolean g_type_check_is_value_type (GType type) __attribute__((__const__));
extern
gboolean g_type_check_value (GValue *value) __attribute__((__pure__));
extern
gboolean g_type_check_value_holds (GValue *value,
       GType type) __attribute__((__pure__));
extern
gboolean g_type_test_flags (GType type,
       guint flags) __attribute__((__const__));



extern
const gchar * g_type_name_from_instance (GTypeInstance *instance);
extern
const gchar * g_type_name_from_class (GTypeClass *g_class);
# 25 "/usr/include/glib-2.0/gobject/gobject.h" 2
# 1 "/usr/include/glib-2.0/gobject/gvalue.h" 1
# 92 "/usr/include/glib-2.0/gobject/gvalue.h"
typedef void (*GValueTransform) (const GValue *src_value,
     GValue *dest_value);
# 106 "/usr/include/glib-2.0/gobject/gvalue.h"
struct _GValue
{

  GType g_type;


  union {
    gint v_int;
    guint v_uint;
    glong v_long;
    gulong v_ulong;
    gint64 v_int64;
    guint64 v_uint64;
    gfloat v_float;
    gdouble v_double;
    gpointer v_pointer;
  } data[2];
};



extern
GValue* g_value_init (GValue *value,
      GType g_type);
extern
void g_value_copy (const GValue *src_value,
      GValue *dest_value);
extern
GValue* g_value_reset (GValue *value);
extern
void g_value_unset (GValue *value);
extern
void g_value_set_instance (GValue *value,
      gpointer instance);
extern
void g_value_init_from_instance (GValue *value,
                                              gpointer instance);



extern
gboolean g_value_fits_pointer (const GValue *value);
extern
gpointer g_value_peek_pointer (const GValue *value);



extern
gboolean g_value_type_compatible (GType src_type,
      GType dest_type);
extern
gboolean g_value_type_transformable (GType src_type,
      GType dest_type);
extern
gboolean g_value_transform (const GValue *src_value,
      GValue *dest_value);
extern
void g_value_register_transform_func (GType src_type,
      GType dest_type,
      GValueTransform transform_func);
# 26 "/usr/include/glib-2.0/gobject/gobject.h" 2
# 1 "/usr/include/glib-2.0/gobject/gparam.h" 1
# 150 "/usr/include/glib-2.0/gobject/gparam.h"
typedef enum
{
  G_PARAM_READABLE = 1 << 0,
  G_PARAM_WRITABLE = 1 << 1,
  G_PARAM_READWRITE = (G_PARAM_READABLE | G_PARAM_WRITABLE),
  G_PARAM_CONSTRUCT = 1 << 2,
  G_PARAM_CONSTRUCT_ONLY = 1 << 3,
  G_PARAM_LAX_VALIDATION = 1 << 4,
  G_PARAM_STATIC_NAME = 1 << 5,

  G_PARAM_PRIVATE = G_PARAM_STATIC_NAME,

  G_PARAM_STATIC_NICK = 1 << 6,
  G_PARAM_STATIC_BLURB = 1 << 7,

  G_PARAM_EXPLICIT_NOTIFY = 1 << 30,
  G_PARAM_DEPRECATED = 1 << 31
} GParamFlags;
# 192 "/usr/include/glib-2.0/gobject/gparam.h"
typedef struct _GParamSpec GParamSpec;
typedef struct _GParamSpecClass GParamSpecClass;
typedef struct _GParameter GParameter;
typedef struct _GParamSpecPool GParamSpecPool;
# 207 "/usr/include/glib-2.0/gobject/gparam.h"
struct _GParamSpec
{
  GTypeInstance g_type_instance;

  const gchar *name;
  GParamFlags flags;
  GType value_type;
  GType owner_type;


  gchar *_nick;
  gchar *_blurb;
  GData *qdata;
  guint ref_count;
  guint param_id;
};
# 242 "/usr/include/glib-2.0/gobject/gparam.h"
struct _GParamSpecClass
{
  GTypeClass g_type_class;

  GType value_type;

  void (*finalize) (GParamSpec *pspec);


  void (*value_set_default) (GParamSpec *pspec,
      GValue *value);
  gboolean (*value_validate) (GParamSpec *pspec,
      GValue *value);
  gint (*values_cmp) (GParamSpec *pspec,
      const GValue *value1,
      const GValue *value2);

  gpointer dummy[4];
};
# 269 "/usr/include/glib-2.0/gobject/gparam.h"
struct _GParameter
{
  const gchar *name;
  GValue value;
};



extern
GParamSpec* g_param_spec_ref (GParamSpec *pspec);
extern
void g_param_spec_unref (GParamSpec *pspec);
extern
void g_param_spec_sink (GParamSpec *pspec);
extern
GParamSpec* g_param_spec_ref_sink (GParamSpec *pspec);
extern
gpointer g_param_spec_get_qdata (GParamSpec *pspec,
       GQuark quark);
extern
void g_param_spec_set_qdata (GParamSpec *pspec,
       GQuark quark,
       gpointer data);
extern
void g_param_spec_set_qdata_full (GParamSpec *pspec,
       GQuark quark,
       gpointer data,
       GDestroyNotify destroy);
extern
gpointer g_param_spec_steal_qdata (GParamSpec *pspec,
       GQuark quark);
extern
GParamSpec* g_param_spec_get_redirect_target (GParamSpec *pspec);

extern
void g_param_value_set_default (GParamSpec *pspec,
       GValue *value);
extern
gboolean g_param_value_defaults (GParamSpec *pspec,
       GValue *value);
extern
gboolean g_param_value_validate (GParamSpec *pspec,
       GValue *value);
extern
gboolean g_param_value_convert (GParamSpec *pspec,
       const GValue *src_value,
       GValue *dest_value,
       gboolean strict_validation);
extern
gint g_param_values_cmp (GParamSpec *pspec,
       const GValue *value1,
       const GValue *value2);
extern
const gchar * g_param_spec_get_name (GParamSpec *pspec);
extern
const gchar * g_param_spec_get_nick (GParamSpec *pspec);
extern
const gchar * g_param_spec_get_blurb (GParamSpec *pspec);
extern
void g_value_set_param (GValue *value,
       GParamSpec *param);
extern
GParamSpec* g_value_get_param (const GValue *value);
extern
GParamSpec* g_value_dup_param (const GValue *value);


extern
void g_value_take_param (GValue *value,
              GParamSpec *param);
__attribute__((__deprecated__)) extern
void g_value_set_param_take_ownership (GValue *value,
                                                 GParamSpec *param);
extern
const GValue * g_param_spec_get_default_value (GParamSpec *param);


typedef struct _GParamSpecTypeInfo GParamSpecTypeInfo;
# 371 "/usr/include/glib-2.0/gobject/gparam.h"
struct _GParamSpecTypeInfo
{

  guint16 instance_size;
  guint16 n_preallocs;
  void (*instance_init) (GParamSpec *pspec);


  GType value_type;
  void (*finalize) (GParamSpec *pspec);
  void (*value_set_default) (GParamSpec *pspec,
      GValue *value);
  gboolean (*value_validate) (GParamSpec *pspec,
      GValue *value);
  gint (*values_cmp) (GParamSpec *pspec,
      const GValue *value1,
      const GValue *value2);
};
extern
GType g_param_type_register_static (const gchar *name,
      const GParamSpecTypeInfo *pspec_info);


GType _g_param_type_register_static_constant (const gchar *name,
            const GParamSpecTypeInfo *pspec_info,
            GType opt_type);



extern
gpointer g_param_spec_internal (GType param_type,
       const gchar *name,
       const gchar *nick,
       const gchar *blurb,
       GParamFlags flags);
extern
GParamSpecPool* g_param_spec_pool_new (gboolean type_prefixing);
extern
void g_param_spec_pool_insert (GParamSpecPool *pool,
       GParamSpec *pspec,
       GType owner_type);
extern
void g_param_spec_pool_remove (GParamSpecPool *pool,
       GParamSpec *pspec);
extern
GParamSpec* g_param_spec_pool_lookup (GParamSpecPool *pool,
       const gchar *param_name,
       GType owner_type,
       gboolean walk_ancestors);
extern
GList* g_param_spec_pool_list_owned (GParamSpecPool *pool,
       GType owner_type);
extern
GParamSpec** g_param_spec_pool_list (GParamSpecPool *pool,
       GType owner_type,
       guint *n_pspecs_p);
# 27 "/usr/include/glib-2.0/gobject/gobject.h" 2
# 1 "/usr/include/glib-2.0/gobject/gclosure.h" 1
# 74 "/usr/include/glib-2.0/gobject/gclosure.h"
typedef struct _GClosure GClosure;
typedef struct _GClosureNotifyData GClosureNotifyData;
# 86 "/usr/include/glib-2.0/gobject/gclosure.h"
typedef void (*GCallback) (void);
# 95 "/usr/include/glib-2.0/gobject/gclosure.h"
typedef void (*GClosureNotify) (gpointer data,
      GClosure *closure);
# 115 "/usr/include/glib-2.0/gobject/gclosure.h"
typedef void (*GClosureMarshal) (GClosure *closure,
      GValue *return_value,
      guint n_param_values,
      const GValue *param_values,
      gpointer invocation_hint,
      gpointer marshal_data);

typedef void (* GVaClosureMarshal) (GClosure *closure,
        GValue *return_value,
        gpointer instance,
        va_list args,
        gpointer marshal_data,
        int n_params,
        GType *param_types);
# 137 "/usr/include/glib-2.0/gobject/gclosure.h"
typedef struct _GCClosure GCClosure;



struct _GClosureNotifyData
{
  gpointer data;
  GClosureNotify notify;
};
# 155 "/usr/include/glib-2.0/gobject/gclosure.h"
struct _GClosure
{

  volatile guint ref_count : 15;


  volatile guint meta_marshal_nouse : 1;
  volatile guint n_guards : 1;
  volatile guint n_fnotifiers : 2;
  volatile guint n_inotifiers : 8;
  volatile guint in_inotify : 1;
  volatile guint floating : 1;

  volatile guint derivative_flag : 1;

  volatile guint in_marshal : 1;
  volatile guint is_invalid : 1;

                  void (*marshal) (GClosure *closure,
         GValue *return_value,
         guint n_param_values,
         const GValue *param_values,
         gpointer invocation_hint,
         gpointer marshal_data);
                    gpointer data;

                  GClosureNotifyData *notifiers;
# 193 "/usr/include/glib-2.0/gobject/gclosure.h"
};


struct _GCClosure
{
  GClosure closure;
  gpointer callback;
};



extern
GClosure* g_cclosure_new (GCallback callback_func,
       gpointer user_data,
       GClosureNotify destroy_data);
extern
GClosure* g_cclosure_new_swap (GCallback callback_func,
       gpointer user_data,
       GClosureNotify destroy_data);
extern
GClosure* g_signal_type_cclosure_new (GType itype,
       guint struct_offset);



extern
GClosure* g_closure_ref (GClosure *closure);
extern
void g_closure_sink (GClosure *closure);
extern
void g_closure_unref (GClosure *closure);

extern
GClosure* g_closure_new_simple (guint sizeof_closure,
       gpointer data);
extern
void g_closure_add_finalize_notifier (GClosure *closure,
       gpointer notify_data,
       GClosureNotify notify_func);
extern
void g_closure_remove_finalize_notifier (GClosure *closure,
       gpointer notify_data,
       GClosureNotify notify_func);
extern
void g_closure_add_invalidate_notifier (GClosure *closure,
       gpointer notify_data,
       GClosureNotify notify_func);
extern
void g_closure_remove_invalidate_notifier (GClosure *closure,
       gpointer notify_data,
       GClosureNotify notify_func);
extern
void g_closure_add_marshal_guards (GClosure *closure,
       gpointer pre_marshal_data,
       GClosureNotify pre_marshal_notify,
       gpointer post_marshal_data,
       GClosureNotify post_marshal_notify);
extern
void g_closure_set_marshal (GClosure *closure,
       GClosureMarshal marshal);
extern
void g_closure_set_meta_marshal (GClosure *closure,
       gpointer marshal_data,
       GClosureMarshal meta_marshal);
extern
void g_closure_invalidate (GClosure *closure);
extern
void g_closure_invoke (GClosure *closure,
       GValue *return_value,
       guint n_param_values,
       const GValue *param_values,
       gpointer invocation_hint);
# 277 "/usr/include/glib-2.0/gobject/gclosure.h"
extern
void g_cclosure_marshal_generic (GClosure *closure,
                                 GValue *return_gvalue,
                                 guint n_param_values,
                                 const GValue *param_values,
                                 gpointer invocation_hint,
                                 gpointer marshal_data);

extern
void g_cclosure_marshal_generic_va (GClosure *closure,
        GValue *return_value,
        gpointer instance,
        va_list args_list,
        gpointer marshal_data,
        int n_params,
        GType *param_types);
# 28 "/usr/include/glib-2.0/gobject/gobject.h" 2
# 1 "/usr/include/glib-2.0/gobject/gsignal.h" 1
# 27 "/usr/include/glib-2.0/gobject/gsignal.h"
# 1 "/usr/include/glib-2.0/gobject/gmarshal.h" 1







extern
void g_cclosure_marshal_VOID__VOID (GClosure *closure,
                                    GValue *return_value,
                                    guint n_param_values,
                                    const GValue *param_values,
                                    gpointer invocation_hint,
                                    gpointer marshal_data);
extern
void g_cclosure_marshal_VOID__VOIDv (GClosure *closure,
                                     GValue *return_value,
                                     gpointer instance,
                                     va_list args,
                                     gpointer marshal_data,
                                     int n_params,
                                     GType *param_types);


extern
void g_cclosure_marshal_VOID__BOOLEAN (GClosure *closure,
                                       GValue *return_value,
                                       guint n_param_values,
                                       const GValue *param_values,
                                       gpointer invocation_hint,
                                       gpointer marshal_data);
extern
void g_cclosure_marshal_VOID__BOOLEANv (GClosure *closure,
                                        GValue *return_value,
                                        gpointer instance,
                                        va_list args,
                                        gpointer marshal_data,
                                        int n_params,
                                        GType *param_types);


extern
void g_cclosure_marshal_VOID__CHAR (GClosure *closure,
                                    GValue *return_value,
                                    guint n_param_values,
                                    const GValue *param_values,
                                    gpointer invocation_hint,
                                    gpointer marshal_data);
extern
void g_cclosure_marshal_VOID__CHARv (GClosure *closure,
                                     GValue *return_value,
                                     gpointer instance,
                                     va_list args,
                                     gpointer marshal_data,
                                     int n_params,
                                     GType *param_types);


extern
void g_cclosure_marshal_VOID__UCHAR (GClosure *closure,
                                     GValue *return_value,
                                     guint n_param_values,
                                     const GValue *param_values,
                                     gpointer invocation_hint,
                                     gpointer marshal_data);
extern
void g_cclosure_marshal_VOID__UCHARv (GClosure *closure,
                                      GValue *return_value,
                                      gpointer instance,
                                      va_list args,
                                      gpointer marshal_data,
                                      int n_params,
                                      GType *param_types);


extern
void g_cclosure_marshal_VOID__INT (GClosure *closure,
                                   GValue *return_value,
                                   guint n_param_values,
                                   const GValue *param_values,
                                   gpointer invocation_hint,
                                   gpointer marshal_data);
extern
void g_cclosure_marshal_VOID__INTv (GClosure *closure,
                                    GValue *return_value,
                                    gpointer instance,
                                    va_list args,
                                    gpointer marshal_data,
                                    int n_params,
                                    GType *param_types);


extern
void g_cclosure_marshal_VOID__UINT (GClosure *closure,
                                    GValue *return_value,
                                    guint n_param_values,
                                    const GValue *param_values,
                                    gpointer invocation_hint,
                                    gpointer marshal_data);
extern
void g_cclosure_marshal_VOID__UINTv (GClosure *closure,
                                     GValue *return_value,
                                     gpointer instance,
                                     va_list args,
                                     gpointer marshal_data,
                                     int n_params,
                                     GType *param_types);


extern
void g_cclosure_marshal_VOID__LONG (GClosure *closure,
                                    GValue *return_value,
                                    guint n_param_values,
                                    const GValue *param_values,
                                    gpointer invocation_hint,
                                    gpointer marshal_data);
extern
void g_cclosure_marshal_VOID__LONGv (GClosure *closure,
                                     GValue *return_value,
                                     gpointer instance,
                                     va_list args,
                                     gpointer marshal_data,
                                     int n_params,
                                     GType *param_types);


extern
void g_cclosure_marshal_VOID__ULONG (GClosure *closure,
                                     GValue *return_value,
                                     guint n_param_values,
                                     const GValue *param_values,
                                     gpointer invocation_hint,
                                     gpointer marshal_data);
extern
void g_cclosure_marshal_VOID__ULONGv (GClosure *closure,
                                      GValue *return_value,
                                      gpointer instance,
                                      va_list args,
                                      gpointer marshal_data,
                                      int n_params,
                                      GType *param_types);


extern
void g_cclosure_marshal_VOID__ENUM (GClosure *closure,
                                    GValue *return_value,
                                    guint n_param_values,
                                    const GValue *param_values,
                                    gpointer invocation_hint,
                                    gpointer marshal_data);
extern
void g_cclosure_marshal_VOID__ENUMv (GClosure *closure,
                                     GValue *return_value,
                                     gpointer instance,
                                     va_list args,
                                     gpointer marshal_data,
                                     int n_params,
                                     GType *param_types);


extern
void g_cclosure_marshal_VOID__FLAGS (GClosure *closure,
                                     GValue *return_value,
                                     guint n_param_values,
                                     const GValue *param_values,
                                     gpointer invocation_hint,
                                     gpointer marshal_data);
extern
void g_cclosure_marshal_VOID__FLAGSv (GClosure *closure,
                                      GValue *return_value,
                                      gpointer instance,
                                      va_list args,
                                      gpointer marshal_data,
                                      int n_params,
                                      GType *param_types);


extern
void g_cclosure_marshal_VOID__FLOAT (GClosure *closure,
                                     GValue *return_value,
                                     guint n_param_values,
                                     const GValue *param_values,
                                     gpointer invocation_hint,
                                     gpointer marshal_data);
extern
void g_cclosure_marshal_VOID__FLOATv (GClosure *closure,
                                      GValue *return_value,
                                      gpointer instance,
                                      va_list args,
                                      gpointer marshal_data,
                                      int n_params,
                                      GType *param_types);


extern
void g_cclosure_marshal_VOID__DOUBLE (GClosure *closure,
                                      GValue *return_value,
                                      guint n_param_values,
                                      const GValue *param_values,
                                      gpointer invocation_hint,
                                      gpointer marshal_data);
extern
void g_cclosure_marshal_VOID__DOUBLEv (GClosure *closure,
                                       GValue *return_value,
                                       gpointer instance,
                                       va_list args,
                                       gpointer marshal_data,
                                       int n_params,
                                       GType *param_types);


extern
void g_cclosure_marshal_VOID__STRING (GClosure *closure,
                                      GValue *return_value,
                                      guint n_param_values,
                                      const GValue *param_values,
                                      gpointer invocation_hint,
                                      gpointer marshal_data);
extern
void g_cclosure_marshal_VOID__STRINGv (GClosure *closure,
                                       GValue *return_value,
                                       gpointer instance,
                                       va_list args,
                                       gpointer marshal_data,
                                       int n_params,
                                       GType *param_types);


extern
void g_cclosure_marshal_VOID__PARAM (GClosure *closure,
                                     GValue *return_value,
                                     guint n_param_values,
                                     const GValue *param_values,
                                     gpointer invocation_hint,
                                     gpointer marshal_data);
extern
void g_cclosure_marshal_VOID__PARAMv (GClosure *closure,
                                      GValue *return_value,
                                      gpointer instance,
                                      va_list args,
                                      gpointer marshal_data,
                                      int n_params,
                                      GType *param_types);


extern
void g_cclosure_marshal_VOID__BOXED (GClosure *closure,
                                     GValue *return_value,
                                     guint n_param_values,
                                     const GValue *param_values,
                                     gpointer invocation_hint,
                                     gpointer marshal_data);
extern
void g_cclosure_marshal_VOID__BOXEDv (GClosure *closure,
                                      GValue *return_value,
                                      gpointer instance,
                                      va_list args,
                                      gpointer marshal_data,
                                      int n_params,
                                      GType *param_types);


extern
void g_cclosure_marshal_VOID__POINTER (GClosure *closure,
                                       GValue *return_value,
                                       guint n_param_values,
                                       const GValue *param_values,
                                       gpointer invocation_hint,
                                       gpointer marshal_data);
extern
void g_cclosure_marshal_VOID__POINTERv (GClosure *closure,
                                        GValue *return_value,
                                        gpointer instance,
                                        va_list args,
                                        gpointer marshal_data,
                                        int n_params,
                                        GType *param_types);


extern
void g_cclosure_marshal_VOID__OBJECT (GClosure *closure,
                                      GValue *return_value,
                                      guint n_param_values,
                                      const GValue *param_values,
                                      gpointer invocation_hint,
                                      gpointer marshal_data);
extern
void g_cclosure_marshal_VOID__OBJECTv (GClosure *closure,
                                       GValue *return_value,
                                       gpointer instance,
                                       va_list args,
                                       gpointer marshal_data,
                                       int n_params,
                                       GType *param_types);


extern
void g_cclosure_marshal_VOID__VARIANT (GClosure *closure,
                                       GValue *return_value,
                                       guint n_param_values,
                                       const GValue *param_values,
                                       gpointer invocation_hint,
                                       gpointer marshal_data);
extern
void g_cclosure_marshal_VOID__VARIANTv (GClosure *closure,
                                        GValue *return_value,
                                        gpointer instance,
                                        va_list args,
                                        gpointer marshal_data,
                                        int n_params,
                                        GType *param_types);


extern
void g_cclosure_marshal_VOID__UINT_POINTER (GClosure *closure,
                                            GValue *return_value,
                                            guint n_param_values,
                                            const GValue *param_values,
                                            gpointer invocation_hint,
                                            gpointer marshal_data);
extern
void g_cclosure_marshal_VOID__UINT_POINTERv (GClosure *closure,
                                             GValue *return_value,
                                             gpointer instance,
                                             va_list args,
                                             gpointer marshal_data,
                                             int n_params,
                                             GType *param_types);


extern
void g_cclosure_marshal_BOOLEAN__FLAGS (GClosure *closure,
                                        GValue *return_value,
                                        guint n_param_values,
                                        const GValue *param_values,
                                        gpointer invocation_hint,
                                        gpointer marshal_data);
extern
void g_cclosure_marshal_BOOLEAN__FLAGSv (GClosure *closure,
                                         GValue *return_value,
                                         gpointer instance,
                                         va_list args,
                                         gpointer marshal_data,
                                         int n_params,
                                         GType *param_types);



extern
void g_cclosure_marshal_STRING__OBJECT_POINTER (GClosure *closure,
                                                GValue *return_value,
                                                guint n_param_values,
                                                const GValue *param_values,
                                                gpointer invocation_hint,
                                                gpointer marshal_data);
extern
void g_cclosure_marshal_STRING__OBJECT_POINTERv (GClosure *closure,
                                                 GValue *return_value,
                                                 gpointer instance,
                                                 va_list args,
                                                 gpointer marshal_data,
                                                 int n_params,
                                                 GType *param_types);


extern
void g_cclosure_marshal_BOOLEAN__BOXED_BOXED (GClosure *closure,
                                              GValue *return_value,
                                              guint n_param_values,
                                              const GValue *param_values,
                                              gpointer invocation_hint,
                                              gpointer marshal_data);
extern
void g_cclosure_marshal_BOOLEAN__BOXED_BOXEDv (GClosure *closure,
                                               GValue *return_value,
                                               gpointer instance,
                                               va_list args,
                                               gpointer marshal_data,
                                               int n_params,
                                               GType *param_types);
# 28 "/usr/include/glib-2.0/gobject/gsignal.h" 2




typedef struct _GSignalQuery GSignalQuery;
typedef struct _GSignalInvocationHint GSignalInvocationHint;
# 43 "/usr/include/glib-2.0/gobject/gsignal.h"
typedef GClosureMarshal GSignalCMarshaller;







typedef GVaClosureMarshal GSignalCVaMarshaller;
# 70 "/usr/include/glib-2.0/gobject/gsignal.h"
typedef gboolean (*GSignalEmissionHook) (GSignalInvocationHint *ihint,
      guint n_param_values,
      const GValue *param_values,
      gpointer data);
# 93 "/usr/include/glib-2.0/gobject/gsignal.h"
typedef gboolean (*GSignalAccumulator) (GSignalInvocationHint *ihint,
      GValue *return_accu,
      const GValue *handler_return,
      gpointer data);
# 127 "/usr/include/glib-2.0/gobject/gsignal.h"
typedef enum
{
  G_SIGNAL_RUN_FIRST = 1 << 0,
  G_SIGNAL_RUN_LAST = 1 << 1,
  G_SIGNAL_RUN_CLEANUP = 1 << 2,
  G_SIGNAL_NO_RECURSE = 1 << 3,
  G_SIGNAL_DETAILED = 1 << 4,
  G_SIGNAL_ACTION = 1 << 5,
  G_SIGNAL_NO_HOOKS = 1 << 6,
  G_SIGNAL_MUST_COLLECT = 1 << 7,
  G_SIGNAL_DEPRECATED = 1 << 8
} GSignalFlags;
# 155 "/usr/include/glib-2.0/gobject/gsignal.h"
typedef enum
{
  G_CONNECT_AFTER = 1 << 0,
  G_CONNECT_SWAPPED = 1 << 1
} GConnectFlags;
# 173 "/usr/include/glib-2.0/gobject/gsignal.h"
typedef enum
{
  G_SIGNAL_MATCH_ID = 1 << 0,
  G_SIGNAL_MATCH_DETAIL = 1 << 1,
  G_SIGNAL_MATCH_CLOSURE = 1 << 2,
  G_SIGNAL_MATCH_FUNC = 1 << 3,
  G_SIGNAL_MATCH_DATA = 1 << 4,
  G_SIGNAL_MATCH_UNBLOCKED = 1 << 5
} GSignalMatchType;
# 223 "/usr/include/glib-2.0/gobject/gsignal.h"
struct _GSignalInvocationHint
{
  guint signal_id;
  GQuark detail;
  GSignalFlags run_type;
};
# 249 "/usr/include/glib-2.0/gobject/gsignal.h"
struct _GSignalQuery
{
  guint signal_id;
  const gchar *signal_name;
  GType itype;
  GSignalFlags signal_flags;
  GType return_type;
  guint n_params;
  const GType *param_types;
};



extern
guint g_signal_newv (const gchar *signal_name,
          GType itype,
          GSignalFlags signal_flags,
          GClosure *class_closure,
          GSignalAccumulator accumulator,
          gpointer accu_data,
          GSignalCMarshaller c_marshaller,
          GType return_type,
          guint n_params,
          GType *param_types);
extern
guint g_signal_new_valist (const gchar *signal_name,
          GType itype,
          GSignalFlags signal_flags,
          GClosure *class_closure,
          GSignalAccumulator accumulator,
          gpointer accu_data,
          GSignalCMarshaller c_marshaller,
          GType return_type,
          guint n_params,
          va_list args);
extern
guint g_signal_new (const gchar *signal_name,
          GType itype,
          GSignalFlags signal_flags,
          guint class_offset,
          GSignalAccumulator accumulator,
          gpointer accu_data,
          GSignalCMarshaller c_marshaller,
          GType return_type,
          guint n_params,
          ...);
extern
guint g_signal_new_class_handler (const gchar *signal_name,
                                             GType itype,
                                             GSignalFlags signal_flags,
                                             GCallback class_handler,
                                             GSignalAccumulator accumulator,
                                             gpointer accu_data,
                                             GSignalCMarshaller c_marshaller,
                                             GType return_type,
                                             guint n_params,
                                             ...);
extern
void g_signal_set_va_marshaller (guint signal_id,
          GType instance_type,
          GSignalCVaMarshaller va_marshaller);

extern
void g_signal_emitv (const GValue *instance_and_params,
          guint signal_id,
          GQuark detail,
          GValue *return_value);
extern
void g_signal_emit_valist (gpointer instance,
          guint signal_id,
          GQuark detail,
          va_list var_args);
extern
void g_signal_emit (gpointer instance,
          guint signal_id,
          GQuark detail,
          ...);
extern
void g_signal_emit_by_name (gpointer instance,
          const gchar *detailed_signal,
          ...);
extern
guint g_signal_lookup (const gchar *name,
          GType itype);
extern
const gchar * g_signal_name (guint signal_id);
extern
void g_signal_query (guint signal_id,
          GSignalQuery *query);
extern
guint* g_signal_list_ids (GType itype,
          guint *n_ids);
extern
gboolean g_signal_parse_name (const gchar *detailed_signal,
          GType itype,
          guint *signal_id_p,
          GQuark *detail_p,
          gboolean force_detail_quark);
extern
GSignalInvocationHint* g_signal_get_invocation_hint (gpointer instance);



extern
void g_signal_stop_emission (gpointer instance,
          guint signal_id,
          GQuark detail);
extern
void g_signal_stop_emission_by_name (gpointer instance,
          const gchar *detailed_signal);
extern
gulong g_signal_add_emission_hook (guint signal_id,
          GQuark detail,
          GSignalEmissionHook hook_func,
          gpointer hook_data,
          GDestroyNotify data_destroy);
extern
void g_signal_remove_emission_hook (guint signal_id,
          gulong hook_id);



extern
gboolean g_signal_has_handler_pending (gpointer instance,
            guint signal_id,
            GQuark detail,
            gboolean may_be_blocked);
extern
gulong g_signal_connect_closure_by_id (gpointer instance,
            guint signal_id,
            GQuark detail,
            GClosure *closure,
            gboolean after);
extern
gulong g_signal_connect_closure (gpointer instance,
            const gchar *detailed_signal,
            GClosure *closure,
            gboolean after);
extern
gulong g_signal_connect_data (gpointer instance,
            const gchar *detailed_signal,
            GCallback c_handler,
            gpointer data,
            GClosureNotify destroy_data,
            GConnectFlags connect_flags);
extern
void g_signal_handler_block (gpointer instance,
            gulong handler_id);
extern
void g_signal_handler_unblock (gpointer instance,
            gulong handler_id);
extern
void g_signal_handler_disconnect (gpointer instance,
            gulong handler_id);
extern
gboolean g_signal_handler_is_connected (gpointer instance,
            gulong handler_id);
extern
gulong g_signal_handler_find (gpointer instance,
            GSignalMatchType mask,
            guint signal_id,
            GQuark detail,
            GClosure *closure,
            gpointer func,
            gpointer data);
extern
guint g_signal_handlers_block_matched (gpointer instance,
            GSignalMatchType mask,
            guint signal_id,
            GQuark detail,
            GClosure *closure,
            gpointer func,
            gpointer data);
extern
guint g_signal_handlers_unblock_matched (gpointer instance,
            GSignalMatchType mask,
            guint signal_id,
            GQuark detail,
            GClosure *closure,
            gpointer func,
            gpointer data);
extern
guint g_signal_handlers_disconnect_matched (gpointer instance,
            GSignalMatchType mask,
            guint signal_id,
            GQuark detail,
            GClosure *closure,
            gpointer func,
            gpointer data);



extern
void g_signal_override_class_closure (guint signal_id,
                                               GType instance_type,
                                               GClosure *class_closure);
extern
void g_signal_override_class_handler (const gchar *signal_name,
                                               GType instance_type,
                                               GCallback class_handler);
extern
void g_signal_chain_from_overridden (const GValue *instance_and_params,
                                               GValue *return_value);
extern
void g_signal_chain_from_overridden_handler (gpointer instance,
                                               ...);
# 585 "/usr/include/glib-2.0/gobject/gsignal.h"
extern
gboolean g_signal_accumulator_true_handled (GSignalInvocationHint *ihint,
         GValue *return_accu,
         const GValue *handler_return,
         gpointer dummy);

extern
gboolean g_signal_accumulator_first_wins (GSignalInvocationHint *ihint,
                                            GValue *return_accu,
                                            const GValue *handler_return,
                                            gpointer dummy);


extern
void g_signal_handlers_destroy (gpointer instance);
void _g_signals_destroy (GType itype);
# 29 "/usr/include/glib-2.0/gobject/gobject.h" 2
# 1 "/usr/include/glib-2.0/gobject/gboxed.h" 1
# 27 "/usr/include/glib-2.0/gobject/gboxed.h"
# 1 "/usr/include/glib-2.0/gobject/glib-types.h" 1
# 291 "/usr/include/glib-2.0/gobject/glib-types.h"
extern
GType g_date_get_type (void) __attribute__((__const__));
extern
GType g_strv_get_type (void) __attribute__((__const__));
extern
GType g_gstring_get_type (void) __attribute__((__const__));
extern
GType g_hash_table_get_type (void) __attribute__((__const__));
extern
GType g_array_get_type (void) __attribute__((__const__));
extern
GType g_byte_array_get_type (void) __attribute__((__const__));
extern
GType g_ptr_array_get_type (void) __attribute__((__const__));
extern
GType g_bytes_get_type (void) __attribute__((__const__));
extern
GType g_variant_type_get_gtype (void) __attribute__((__const__));
extern
GType g_regex_get_type (void) __attribute__((__const__));
extern
GType g_match_info_get_type (void) __attribute__((__const__));
extern
GType g_error_get_type (void) __attribute__((__const__));
extern
GType g_date_time_get_type (void) __attribute__((__const__));
extern
GType g_time_zone_get_type (void) __attribute__((__const__));
extern
GType g_io_channel_get_type (void) __attribute__((__const__));
extern
GType g_io_condition_get_type (void) __attribute__((__const__));
extern
GType g_variant_builder_get_type (void) __attribute__((__const__));
extern
GType g_variant_dict_get_type (void) __attribute__((__const__));
extern
GType g_key_file_get_type (void) __attribute__((__const__));
extern
GType g_main_loop_get_type (void) __attribute__((__const__));
extern
GType g_main_context_get_type (void) __attribute__((__const__));
extern
GType g_source_get_type (void) __attribute__((__const__));
extern
GType g_pollfd_get_type (void) __attribute__((__const__));
extern
GType g_thread_get_type (void) __attribute__((__const__));
extern
GType g_checksum_get_type (void) __attribute__((__const__));
extern
GType g_markup_parse_context_get_type (void) __attribute__((__const__));
extern
GType g_mapped_file_get_type (void) __attribute__((__const__));

__attribute__((__deprecated__)) extern
GType g_variant_get_gtype (void) __attribute__((__const__));






typedef gchar** GStrv;
# 28 "/usr/include/glib-2.0/gobject/gboxed.h" 2
# 56 "/usr/include/glib-2.0/gobject/gboxed.h"
typedef gpointer (*GBoxedCopyFunc) (gpointer boxed);
# 65 "/usr/include/glib-2.0/gobject/gboxed.h"
typedef void (*GBoxedFreeFunc) (gpointer boxed);



extern
gpointer g_boxed_copy (GType boxed_type,
                                           gconstpointer src_boxed);
extern
void g_boxed_free (GType boxed_type,
                                           gpointer boxed);
extern
void g_value_set_boxed (GValue *value,
                                           gconstpointer v_boxed);
extern
void g_value_set_static_boxed (GValue *value,
                                           gconstpointer v_boxed);
extern
void g_value_take_boxed (GValue *value,
                                           gconstpointer v_boxed);
__attribute__((__deprecated__)) extern
void g_value_set_boxed_take_ownership (GValue *value,
                                           gconstpointer v_boxed);
extern
gpointer g_value_get_boxed (const GValue *value);
extern
gpointer g_value_dup_boxed (const GValue *value);



extern
GType g_boxed_type_register_static (const gchar *name,
                                           GBoxedCopyFunc boxed_copy,
                                           GBoxedFreeFunc boxed_free);
# 115 "/usr/include/glib-2.0/gobject/gboxed.h"
extern
GType g_closure_get_type (void) __attribute__((__const__));
extern
GType g_value_get_type (void) __attribute__((__const__));
# 30 "/usr/include/glib-2.0/gobject/gobject.h" 2
# 187 "/usr/include/glib-2.0/gobject/gobject.h"
typedef struct _GObject GObject;
typedef struct _GObjectClass GObjectClass;
typedef struct _GObject GInitiallyUnowned;
typedef struct _GObjectClass GInitiallyUnownedClass;
typedef struct _GObjectConstructParam GObjectConstructParam;
# 202 "/usr/include/glib-2.0/gobject/gobject.h"
typedef void (*GObjectGetPropertyFunc) (GObject *object,
                                         guint property_id,
                                         GValue *value,
                                         GParamSpec *pspec);
# 216 "/usr/include/glib-2.0/gobject/gobject.h"
typedef void (*GObjectSetPropertyFunc) (GObject *object,
                                         guint property_id,
                                         const GValue *value,
                                         GParamSpec *pspec);






typedef void (*GObjectFinalizeFunc) (GObject *object);
# 237 "/usr/include/glib-2.0/gobject/gobject.h"
typedef void (*GWeakNotify) (gpointer data,
      GObject *where_the_object_was);






struct _GObject
{
  GTypeInstance g_type_instance;


  volatile guint ref_count;
  GData *qdata;
};
# 316 "/usr/include/glib-2.0/gobject/gobject.h"
struct _GObjectClass
{
  GTypeClass g_type_class;


  GSList *construct_properties;



  GObject* (*constructor) (GType type,
                                 guint n_construct_properties,
                                 GObjectConstructParam *construct_properties);

  void (*set_property) (GObject *object,
                                         guint property_id,
                                         const GValue *value,
                                         GParamSpec *pspec);
  void (*get_property) (GObject *object,
                                         guint property_id,
                                         GValue *value,
                                         GParamSpec *pspec);
  void (*dispose) (GObject *object);
  void (*finalize) (GObject *object);

  void (*dispatch_properties_changed) (GObject *object,
          guint n_pspecs,
          GParamSpec **pspecs);

  void (*notify) (GObject *object,
      GParamSpec *pspec);


  void (*constructed) (GObject *object);


  gsize flags;


  gpointer pdummy[6];
};
# 365 "/usr/include/glib-2.0/gobject/gobject.h"
struct _GObjectConstructParam
{
  GParamSpec *pspec;
  GValue *value;
};
# 386 "/usr/include/glib-2.0/gobject/gobject.h"
extern
GType g_initially_unowned_get_type (void);
extern
void g_object_class_install_property (GObjectClass *oclass,
            guint property_id,
            GParamSpec *pspec);
extern
GParamSpec* g_object_class_find_property (GObjectClass *oclass,
            const gchar *property_name);
extern
GParamSpec**g_object_class_list_properties (GObjectClass *oclass,
            guint *n_properties);
extern
void g_object_class_override_property (GObjectClass *oclass,
            guint property_id,
            const gchar *name);
extern
void g_object_class_install_properties (GObjectClass *oclass,
                                               guint n_pspecs,
                                               GParamSpec **pspecs);

extern
void g_object_interface_install_property (gpointer g_iface,
       GParamSpec *pspec);
extern
GParamSpec* g_object_interface_find_property (gpointer g_iface,
       const gchar *property_name);
extern
GParamSpec**g_object_interface_list_properties (gpointer g_iface,
       guint *n_properties_p);

extern
GType g_object_get_type (void) __attribute__((__const__));
extern
gpointer g_object_new (GType object_type,
            const gchar *first_property_name,
            ...);
extern
gpointer g_object_newv (GType object_type,
            guint n_parameters,
            GParameter *parameters);
extern
GObject* g_object_new_valist (GType object_type,
            const gchar *first_property_name,
            va_list var_args);
extern
void g_object_set (gpointer object,
            const gchar *first_property_name,
            ...) __attribute__((__sentinel__));
extern
void g_object_get (gpointer object,
            const gchar *first_property_name,
            ...) __attribute__((__sentinel__));
extern
gpointer g_object_connect (gpointer object,
            const gchar *signal_spec,
            ...) __attribute__((__sentinel__));
extern
void g_object_disconnect (gpointer object,
            const gchar *signal_spec,
            ...) __attribute__((__sentinel__));
extern
void g_object_set_valist (GObject *object,
            const gchar *first_property_name,
            va_list var_args);
extern
void g_object_get_valist (GObject *object,
            const gchar *first_property_name,
            va_list var_args);
extern
void g_object_set_property (GObject *object,
            const gchar *property_name,
            const GValue *value);
extern
void g_object_get_property (GObject *object,
            const gchar *property_name,
            GValue *value);
extern
void g_object_freeze_notify (GObject *object);
extern
void g_object_notify (GObject *object,
            const gchar *property_name);
extern
void g_object_notify_by_pspec (GObject *object,
            GParamSpec *pspec);
extern
void g_object_thaw_notify (GObject *object);
extern
gboolean g_object_is_floating (gpointer object);
extern
gpointer g_object_ref_sink (gpointer object);
extern
gpointer g_object_ref (gpointer object);
extern
void g_object_unref (gpointer object);
extern
void g_object_weak_ref (GObject *object,
            GWeakNotify notify,
            gpointer data);
extern
void g_object_weak_unref (GObject *object,
            GWeakNotify notify,
            gpointer data);
extern
void g_object_add_weak_pointer (GObject *object,
                                               gpointer *weak_pointer_location);
extern
void g_object_remove_weak_pointer (GObject *object,
                                               gpointer *weak_pointer_location);
# 508 "/usr/include/glib-2.0/gobject/gobject.h"
typedef void (*GToggleNotify) (gpointer data,
          GObject *object,
          gboolean is_last_ref);

extern
void g_object_add_toggle_ref (GObject *object,
     GToggleNotify notify,
     gpointer data);
extern
void g_object_remove_toggle_ref (GObject *object,
     GToggleNotify notify,
     gpointer data);

extern
gpointer g_object_get_qdata (GObject *object,
            GQuark quark);
extern
void g_object_set_qdata (GObject *object,
            GQuark quark,
            gpointer data);
extern
void g_object_set_qdata_full (GObject *object,
            GQuark quark,
            gpointer data,
            GDestroyNotify destroy);
extern
gpointer g_object_steal_qdata (GObject *object,
            GQuark quark);

extern
gpointer g_object_dup_qdata (GObject *object,
                                               GQuark quark,
                                               GDuplicateFunc dup_func,
            gpointer user_data);
extern
gboolean g_object_replace_qdata (GObject *object,
                                               GQuark quark,
                                               gpointer oldval,
                                               gpointer newval,
                                               GDestroyNotify destroy,
            GDestroyNotify *old_destroy);

extern
gpointer g_object_get_data (GObject *object,
            const gchar *key);
extern
void g_object_set_data (GObject *object,
            const gchar *key,
            gpointer data);
extern
void g_object_set_data_full (GObject *object,
            const gchar *key,
            gpointer data,
            GDestroyNotify destroy);
extern
gpointer g_object_steal_data (GObject *object,
            const gchar *key);

extern
gpointer g_object_dup_data (GObject *object,
                                               const gchar *key,
                                               GDuplicateFunc dup_func,
            gpointer user_data);
extern
gboolean g_object_replace_data (GObject *object,
                                               const gchar *key,
                                               gpointer oldval,
                                               gpointer newval,
                                               GDestroyNotify destroy,
            GDestroyNotify *old_destroy);


extern
void g_object_watch_closure (GObject *object,
            GClosure *closure);
extern
GClosure* g_cclosure_new_object (GCallback callback_func,
            GObject *object);
extern
GClosure* g_cclosure_new_object_swap (GCallback callback_func,
            GObject *object);
extern
GClosure* g_closure_new_object (guint sizeof_closure,
            GObject *object);
extern
void g_value_set_object (GValue *value,
            gpointer v_object);
extern
gpointer g_value_get_object (const GValue *value);
extern
gpointer g_value_dup_object (const GValue *value);
extern
gulong g_signal_connect_object (gpointer instance,
            const gchar *detailed_signal,
            GCallback c_handler,
            gpointer gobject,
            GConnectFlags connect_flags);


extern
void g_object_force_floating (GObject *object);
extern
void g_object_run_dispose (GObject *object);


extern
void g_value_take_object (GValue *value,
            gpointer v_object);
__attribute__((__deprecated__)) extern
void g_value_set_object_take_ownership (GValue *value,
                                               gpointer v_object);

__attribute__((__deprecated__)) extern
gsize g_object_compat_control (gsize what,
            gpointer data);
# 650 "/usr/include/glib-2.0/gobject/gobject.h"
extern
void g_clear_object (volatile GObject **object_ptr);


typedef struct {

    union { gpointer p; } priv;
} GWeakRef;

extern
void g_weak_ref_init (GWeakRef *weak_ref,
                                gpointer object);
extern
void g_weak_ref_clear (GWeakRef *weak_ref);
extern
gpointer g_weak_ref_get (GWeakRef *weak_ref);
extern
void g_weak_ref_set (GWeakRef *weak_ref,
                                gpointer object);
# 30 "/usr/include/glib-2.0/gobject/gbinding.h" 2
# 47 "/usr/include/glib-2.0/gobject/gbinding.h"
typedef struct _GBinding GBinding;
# 68 "/usr/include/glib-2.0/gobject/gbinding.h"
typedef gboolean (* GBindingTransformFunc) (GBinding *binding,
                                            const GValue *from_value,
                                            GValue *to_value,
                                            gpointer user_data);
# 96 "/usr/include/glib-2.0/gobject/gbinding.h"
typedef enum {
  G_BINDING_DEFAULT = 0,

  G_BINDING_BIDIRECTIONAL = 1 << 0,
  G_BINDING_SYNC_CREATE = 1 << 1,
  G_BINDING_INVERT_BOOLEAN = 1 << 2
} GBindingFlags;

extern
GType g_binding_flags_get_type (void) __attribute__((__const__));
extern
GType g_binding_get_type (void) __attribute__((__const__));

extern
GBindingFlags g_binding_get_flags (GBinding *binding);
extern
GObject * g_binding_get_source (GBinding *binding);
extern
GObject * g_binding_get_target (GBinding *binding);
extern
const gchar * g_binding_get_source_property (GBinding *binding);
extern
const gchar * g_binding_get_target_property (GBinding *binding);
extern
void g_binding_unbind (GBinding *binding);

extern
GBinding *g_object_bind_property (gpointer source,
                                                const gchar *source_property,
                                                gpointer target,
                                                const gchar *target_property,
                                                GBindingFlags flags);
extern
GBinding *g_object_bind_property_full (gpointer source,
                                                const gchar *source_property,
                                                gpointer target,
                                                const gchar *target_property,
                                                GBindingFlags flags,
                                                GBindingTransformFunc transform_to,
                                                GBindingTransformFunc transform_from,
                                                gpointer user_data,
                                                GDestroyNotify notify);
extern
GBinding *g_object_bind_property_with_closures (gpointer source,
                                                const gchar *source_property,
                                                gpointer target,
                                                const gchar *target_property,
                                                GBindingFlags flags,
                                                GClosure *transform_to,
                                                GClosure *transform_from);
# 24 "/usr/include/glib-2.0/glib-object.h" 2

# 1 "/usr/include/glib-2.0/gobject/genums.h" 1
# 138 "/usr/include/glib-2.0/gobject/genums.h"
typedef struct _GEnumClass GEnumClass;
typedef struct _GFlagsClass GFlagsClass;
typedef struct _GEnumValue GEnumValue;
typedef struct _GFlagsValue GFlagsValue;
# 155 "/usr/include/glib-2.0/gobject/genums.h"
struct _GEnumClass
{
  GTypeClass g_type_class;


  gint minimum;
  gint maximum;
  guint n_values;
  GEnumValue *values;
};
# 176 "/usr/include/glib-2.0/gobject/genums.h"
struct _GFlagsClass
{
  GTypeClass g_type_class;


  guint mask;
  guint n_values;
  GFlagsValue *values;
};
# 194 "/usr/include/glib-2.0/gobject/genums.h"
struct _GEnumValue
{
  gint value;
  const gchar *value_name;
  const gchar *value_nick;
};
# 209 "/usr/include/glib-2.0/gobject/genums.h"
struct _GFlagsValue
{
  guint value;
  const gchar *value_name;
  const gchar *value_nick;
};



extern
GEnumValue* g_enum_get_value (GEnumClass *enum_class,
       gint value);
extern
GEnumValue* g_enum_get_value_by_name (GEnumClass *enum_class,
       const gchar *name);
extern
GEnumValue* g_enum_get_value_by_nick (GEnumClass *enum_class,
       const gchar *nick);
extern
GFlagsValue* g_flags_get_first_value (GFlagsClass *flags_class,
       guint value);
extern
GFlagsValue* g_flags_get_value_by_name (GFlagsClass *flags_class,
       const gchar *name);
extern
GFlagsValue* g_flags_get_value_by_nick (GFlagsClass *flags_class,
       const gchar *nick);
extern
void g_value_set_enum (GValue *value,
       gint v_enum);
extern
gint g_value_get_enum (const GValue *value);
extern
void g_value_set_flags (GValue *value,
       guint v_flags);
extern
guint g_value_get_flags (const GValue *value);







extern
GType g_enum_register_static (const gchar *name,
        const GEnumValue *const_static_values);
extern
GType g_flags_register_static (const gchar *name,
        const GFlagsValue *const_static_values);



extern
void g_enum_complete_type_info (GType g_enum_type,
        GTypeInfo *info,
        const GEnumValue *const_values);
extern
void g_flags_complete_type_info (GType g_flags_type,
        GTypeInfo *info,
        const GFlagsValue *const_values);
# 26 "/usr/include/glib-2.0/glib-object.h" 2


# 1 "/usr/include/glib-2.0/gobject/gparamspecs.h" 1
# 586 "/usr/include/glib-2.0/gobject/gparamspecs.h"
typedef struct _GParamSpecChar GParamSpecChar;
typedef struct _GParamSpecUChar GParamSpecUChar;
typedef struct _GParamSpecBoolean GParamSpecBoolean;
typedef struct _GParamSpecInt GParamSpecInt;
typedef struct _GParamSpecUInt GParamSpecUInt;
typedef struct _GParamSpecLong GParamSpecLong;
typedef struct _GParamSpecULong GParamSpecULong;
typedef struct _GParamSpecInt64 GParamSpecInt64;
typedef struct _GParamSpecUInt64 GParamSpecUInt64;
typedef struct _GParamSpecUnichar GParamSpecUnichar;
typedef struct _GParamSpecEnum GParamSpecEnum;
typedef struct _GParamSpecFlags GParamSpecFlags;
typedef struct _GParamSpecFloat GParamSpecFloat;
typedef struct _GParamSpecDouble GParamSpecDouble;
typedef struct _GParamSpecString GParamSpecString;
typedef struct _GParamSpecParam GParamSpecParam;
typedef struct _GParamSpecBoxed GParamSpecBoxed;
typedef struct _GParamSpecPointer GParamSpecPointer;
typedef struct _GParamSpecValueArray GParamSpecValueArray;
typedef struct _GParamSpecObject GParamSpecObject;
typedef struct _GParamSpecOverride GParamSpecOverride;
typedef struct _GParamSpecGType GParamSpecGType;
typedef struct _GParamSpecVariant GParamSpecVariant;
# 619 "/usr/include/glib-2.0/gobject/gparamspecs.h"
struct _GParamSpecChar
{
  GParamSpec parent_instance;

  gint8 minimum;
  gint8 maximum;
  gint8 default_value;
};
# 636 "/usr/include/glib-2.0/gobject/gparamspecs.h"
struct _GParamSpecUChar
{
  GParamSpec parent_instance;

  guint8 minimum;
  guint8 maximum;
  guint8 default_value;
};







struct _GParamSpecBoolean
{
  GParamSpec parent_instance;

  gboolean default_value;
};
# 666 "/usr/include/glib-2.0/gobject/gparamspecs.h"
struct _GParamSpecInt
{
  GParamSpec parent_instance;

  gint minimum;
  gint maximum;
  gint default_value;
};
# 683 "/usr/include/glib-2.0/gobject/gparamspecs.h"
struct _GParamSpecUInt
{
  GParamSpec parent_instance;

  guint minimum;
  guint maximum;
  guint default_value;
};
# 700 "/usr/include/glib-2.0/gobject/gparamspecs.h"
struct _GParamSpecLong
{
  GParamSpec parent_instance;

  glong minimum;
  glong maximum;
  glong default_value;
};
# 717 "/usr/include/glib-2.0/gobject/gparamspecs.h"
struct _GParamSpecULong
{
  GParamSpec parent_instance;

  gulong minimum;
  gulong maximum;
  gulong default_value;
};
# 734 "/usr/include/glib-2.0/gobject/gparamspecs.h"
struct _GParamSpecInt64
{
  GParamSpec parent_instance;

  gint64 minimum;
  gint64 maximum;
  gint64 default_value;
};
# 751 "/usr/include/glib-2.0/gobject/gparamspecs.h"
struct _GParamSpecUInt64
{
  GParamSpec parent_instance;

  guint64 minimum;
  guint64 maximum;
  guint64 default_value;
};







struct _GParamSpecUnichar
{
  GParamSpec parent_instance;

  gunichar default_value;
};
# 781 "/usr/include/glib-2.0/gobject/gparamspecs.h"
struct _GParamSpecEnum
{
  GParamSpec parent_instance;

  GEnumClass *enum_class;
  gint default_value;
};
# 797 "/usr/include/glib-2.0/gobject/gparamspecs.h"
struct _GParamSpecFlags
{
  GParamSpec parent_instance;

  GFlagsClass *flags_class;
  guint default_value;
};
# 815 "/usr/include/glib-2.0/gobject/gparamspecs.h"
struct _GParamSpecFloat
{
  GParamSpec parent_instance;

  gfloat minimum;
  gfloat maximum;
  gfloat default_value;
  gfloat epsilon;
};
# 835 "/usr/include/glib-2.0/gobject/gparamspecs.h"
struct _GParamSpecDouble
{
  GParamSpec parent_instance;

  gdouble minimum;
  gdouble maximum;
  gdouble default_value;
  gdouble epsilon;
};
# 857 "/usr/include/glib-2.0/gobject/gparamspecs.h"
struct _GParamSpecString
{
  GParamSpec parent_instance;

  gchar *default_value;
  gchar *cset_first;
  gchar *cset_nth;
  gchar substitutor;
  guint null_fold_if_empty : 1;
  guint ensure_non_null : 1;
};







struct _GParamSpecParam
{
  GParamSpec parent_instance;
};






struct _GParamSpecBoxed
{
  GParamSpec parent_instance;
};






struct _GParamSpecPointer
{
  GParamSpec parent_instance;
};
# 907 "/usr/include/glib-2.0/gobject/gparamspecs.h"
struct _GParamSpecValueArray
{
  GParamSpec parent_instance;
  GParamSpec *element_spec;
  guint fixed_n_elements;
};






struct _GParamSpecObject
{
  GParamSpec parent_instance;
};
# 937 "/usr/include/glib-2.0/gobject/gparamspecs.h"
struct _GParamSpecOverride
{

  GParamSpec parent_instance;
  GParamSpec *overridden;
};
# 952 "/usr/include/glib-2.0/gobject/gparamspecs.h"
struct _GParamSpecGType
{
  GParamSpec parent_instance;
  GType is_a_type;
};
# 967 "/usr/include/glib-2.0/gobject/gparamspecs.h"
struct _GParamSpecVariant
{
  GParamSpec parent_instance;
  GVariantType *type;
  GVariant *default_value;


  gpointer padding[4];
};


extern
GParamSpec* g_param_spec_char (const gchar *name,
       const gchar *nick,
       const gchar *blurb,
       gint8 minimum,
       gint8 maximum,
       gint8 default_value,
       GParamFlags flags);
extern
GParamSpec* g_param_spec_uchar (const gchar *name,
       const gchar *nick,
       const gchar *blurb,
       guint8 minimum,
       guint8 maximum,
       guint8 default_value,
       GParamFlags flags);
extern
GParamSpec* g_param_spec_boolean (const gchar *name,
       const gchar *nick,
       const gchar *blurb,
       gboolean default_value,
       GParamFlags flags);
extern
GParamSpec* g_param_spec_int (const gchar *name,
       const gchar *nick,
       const gchar *blurb,
       gint minimum,
       gint maximum,
       gint default_value,
       GParamFlags flags);
extern
GParamSpec* g_param_spec_uint (const gchar *name,
       const gchar *nick,
       const gchar *blurb,
       guint minimum,
       guint maximum,
       guint default_value,
       GParamFlags flags);
extern
GParamSpec* g_param_spec_long (const gchar *name,
       const gchar *nick,
       const gchar *blurb,
       glong minimum,
       glong maximum,
       glong default_value,
       GParamFlags flags);
extern
GParamSpec* g_param_spec_ulong (const gchar *name,
       const gchar *nick,
       const gchar *blurb,
       gulong minimum,
       gulong maximum,
       gulong default_value,
       GParamFlags flags);
extern
GParamSpec* g_param_spec_int64 (const gchar *name,
       const gchar *nick,
       const gchar *blurb,
       gint64 minimum,
       gint64 maximum,
       gint64 default_value,
       GParamFlags flags);
extern
GParamSpec* g_param_spec_uint64 (const gchar *name,
       const gchar *nick,
       const gchar *blurb,
       guint64 minimum,
       guint64 maximum,
       guint64 default_value,
       GParamFlags flags);
extern
GParamSpec* g_param_spec_unichar (const gchar *name,
              const gchar *nick,
              const gchar *blurb,
              gunichar default_value,
              GParamFlags flags);
extern
GParamSpec* g_param_spec_enum (const gchar *name,
       const gchar *nick,
       const gchar *blurb,
       GType enum_type,
       gint default_value,
       GParamFlags flags);
extern
GParamSpec* g_param_spec_flags (const gchar *name,
       const gchar *nick,
       const gchar *blurb,
       GType flags_type,
       guint default_value,
       GParamFlags flags);
extern
GParamSpec* g_param_spec_float (const gchar *name,
       const gchar *nick,
       const gchar *blurb,
       gfloat minimum,
       gfloat maximum,
       gfloat default_value,
       GParamFlags flags);
extern
GParamSpec* g_param_spec_double (const gchar *name,
       const gchar *nick,
       const gchar *blurb,
       gdouble minimum,
       gdouble maximum,
       gdouble default_value,
       GParamFlags flags);
extern
GParamSpec* g_param_spec_string (const gchar *name,
       const gchar *nick,
       const gchar *blurb,
       const gchar *default_value,
       GParamFlags flags);
extern
GParamSpec* g_param_spec_param (const gchar *name,
       const gchar *nick,
       const gchar *blurb,
       GType param_type,
       GParamFlags flags);
extern
GParamSpec* g_param_spec_boxed (const gchar *name,
       const gchar *nick,
       const gchar *blurb,
       GType boxed_type,
       GParamFlags flags);
extern
GParamSpec* g_param_spec_pointer (const gchar *name,
       const gchar *nick,
       const gchar *blurb,
       GParamFlags flags);
extern
GParamSpec* g_param_spec_value_array (const gchar *name,
       const gchar *nick,
       const gchar *blurb,
       GParamSpec *element_spec,
       GParamFlags flags);
extern
GParamSpec* g_param_spec_object (const gchar *name,
       const gchar *nick,
       const gchar *blurb,
       GType object_type,
       GParamFlags flags);
extern
GParamSpec* g_param_spec_override (const gchar *name,
       GParamSpec *overridden);
extern
GParamSpec* g_param_spec_gtype (const gchar *name,
       const gchar *nick,
       const gchar *blurb,
       GType is_a_type,
       GParamFlags flags);
extern
GParamSpec* g_param_spec_variant (const gchar *name,
       const gchar *nick,
       const gchar *blurb,
       const GVariantType *type,
       GVariant *default_value,
       GParamFlags flags);
# 1160 "/usr/include/glib-2.0/gobject/gparamspecs.h"
extern GType *g_param_spec_types;
# 29 "/usr/include/glib-2.0/glib-object.h" 2

# 1 "/usr/include/glib-2.0/gobject/gsourceclosure.h" 1
# 29 "/usr/include/glib-2.0/gobject/gsourceclosure.h"
extern
void g_source_set_closure (GSource *source,
      GClosure *closure);

extern
void g_source_set_dummy_callback (GSource *source);
# 31 "/usr/include/glib-2.0/glib-object.h" 2

# 1 "/usr/include/glib-2.0/gobject/gtypemodule.h" 1
# 29 "/usr/include/glib-2.0/gobject/gtypemodule.h"
typedef struct _GTypeModule GTypeModule;
typedef struct _GTypeModuleClass GTypeModuleClass;
# 46 "/usr/include/glib-2.0/gobject/gtypemodule.h"
struct _GTypeModule
{
  GObject parent_instance;

  guint use_count;
  GSList *type_infos;
  GSList *interface_infos;


  gchar *name;
};
# 68 "/usr/include/glib-2.0/gobject/gtypemodule.h"
struct _GTypeModuleClass
{
  GObjectClass parent_class;


  gboolean (* load) (GTypeModule *module);
  void (* unload) (GTypeModule *module);



  void (*reserved1) (void);
  void (*reserved2) (void);
  void (*reserved3) (void);
  void (*reserved4) (void);
};
# 247 "/usr/include/glib-2.0/gobject/gtypemodule.h"
extern
GType g_type_module_get_type (void) __attribute__((__const__));
extern
gboolean g_type_module_use (GTypeModule *module);
extern
void g_type_module_unuse (GTypeModule *module);
extern
void g_type_module_set_name (GTypeModule *module,
                                       const gchar *name);
extern
GType g_type_module_register_type (GTypeModule *module,
                                       GType parent_type,
                                       const gchar *type_name,
                                       const GTypeInfo *type_info,
                                       GTypeFlags flags);
extern
void g_type_module_add_interface (GTypeModule *module,
                                       GType instance_type,
                                       GType interface_type,
                                       const GInterfaceInfo *interface_info);
extern
GType g_type_module_register_enum (GTypeModule *module,
                                       const gchar *name,
                                       const GEnumValue *const_static_values);
extern
GType g_type_module_register_flags (GTypeModule *module,
                                       const gchar *name,
                                       const GFlagsValue *const_static_values);
# 33 "/usr/include/glib-2.0/glib-object.h" 2
# 1 "/usr/include/glib-2.0/gobject/gtypeplugin.h" 1
# 38 "/usr/include/glib-2.0/gobject/gtypeplugin.h"
typedef struct _GTypePluginClass GTypePluginClass;







typedef void (*GTypePluginUse) (GTypePlugin *plugin);






typedef void (*GTypePluginUnuse) (GTypePlugin *plugin);
# 63 "/usr/include/glib-2.0/gobject/gtypeplugin.h"
typedef void (*GTypePluginCompleteTypeInfo) (GTypePlugin *plugin,
         GType g_type,
         GTypeInfo *info,
         GTypeValueTable *value_table);
# 77 "/usr/include/glib-2.0/gobject/gtypeplugin.h"
typedef void (*GTypePluginCompleteInterfaceInfo) (GTypePlugin *plugin,
         GType instance_type,
         GType interface_type,
         GInterfaceInfo *info);
# 101 "/usr/include/glib-2.0/gobject/gtypeplugin.h"
struct _GTypePluginClass
{

  GTypeInterface base_iface;


  GTypePluginUse use_plugin;
  GTypePluginUnuse unuse_plugin;
  GTypePluginCompleteTypeInfo complete_type_info;
  GTypePluginCompleteInterfaceInfo complete_interface_info;
};



extern
GType g_type_plugin_get_type (void) __attribute__((__const__));
extern
void g_type_plugin_use (GTypePlugin *plugin);
extern
void g_type_plugin_unuse (GTypePlugin *plugin);
extern
void g_type_plugin_complete_type_info (GTypePlugin *plugin,
       GType g_type,
       GTypeInfo *info,
       GTypeValueTable *value_table);
extern
void g_type_plugin_complete_interface_info (GTypePlugin *plugin,
       GType instance_type,
       GType interface_type,
       GInterfaceInfo *info);
# 34 "/usr/include/glib-2.0/glib-object.h" 2

# 1 "/usr/include/glib-2.0/gobject/gvaluearray.h" 1
# 41 "/usr/include/glib-2.0/gobject/gvaluearray.h"
typedef struct _GValueArray GValueArray;







struct _GValueArray
{
  guint n_values;
  GValue *values;


  guint n_prealloced;
};


__attribute__((__deprecated__)) extern
GType g_value_array_get_type (void) __attribute__((__const__));

__attribute__((__deprecated__)) extern
GValue* g_value_array_get_nth (GValueArray *value_array,
           guint index_);

__attribute__((__deprecated__)) extern
GValueArray* g_value_array_new (guint n_prealloced);

__attribute__((__deprecated__)) extern
void g_value_array_free (GValueArray *value_array);

__attribute__((__deprecated__)) extern
GValueArray* g_value_array_copy (const GValueArray *value_array);

__attribute__((__deprecated__)) extern
GValueArray* g_value_array_prepend (GValueArray *value_array,
           const GValue *value);

__attribute__((__deprecated__)) extern
GValueArray* g_value_array_append (GValueArray *value_array,
           const GValue *value);

__attribute__((__deprecated__)) extern
GValueArray* g_value_array_insert (GValueArray *value_array,
           guint index_,
           const GValue *value);

__attribute__((__deprecated__)) extern
GValueArray* g_value_array_remove (GValueArray *value_array,
           guint index_);

__attribute__((__deprecated__)) extern
GValueArray* g_value_array_sort (GValueArray *value_array,
           GCompareFunc compare_func);

__attribute__((__deprecated__)) extern
GValueArray* g_value_array_sort_with_data (GValueArray *value_array,
           GCompareDataFunc compare_func,
           gpointer user_data);
# 36 "/usr/include/glib-2.0/glib-object.h" 2
# 1 "/usr/include/glib-2.0/gobject/gvaluetypes.h" 1
# 178 "/usr/include/glib-2.0/gobject/gvaluetypes.h"
__attribute__((__deprecated__)) extern
void g_value_set_char (GValue *value,
                                                 gchar v_char);
__attribute__((__deprecated__)) extern
gchar g_value_get_char (const GValue *value);
extern
void g_value_set_schar (GValue *value,
       gint8 v_char);
extern
gint8 g_value_get_schar (const GValue *value);
extern
void g_value_set_uchar (GValue *value,
       guchar v_uchar);
extern
guchar g_value_get_uchar (const GValue *value);
extern
void g_value_set_boolean (GValue *value,
       gboolean v_boolean);
extern
gboolean g_value_get_boolean (const GValue *value);
extern
void g_value_set_int (GValue *value,
       gint v_int);
extern
gint g_value_get_int (const GValue *value);
extern
void g_value_set_uint (GValue *value,
       guint v_uint);
extern
guint g_value_get_uint (const GValue *value);
extern
void g_value_set_long (GValue *value,
       glong v_long);
extern
glong g_value_get_long (const GValue *value);
extern
void g_value_set_ulong (GValue *value,
       gulong v_ulong);
extern
gulong g_value_get_ulong (const GValue *value);
extern
void g_value_set_int64 (GValue *value,
       gint64 v_int64);
extern
gint64 g_value_get_int64 (const GValue *value);
extern
void g_value_set_uint64 (GValue *value,
       guint64 v_uint64);
extern
guint64 g_value_get_uint64 (const GValue *value);
extern
void g_value_set_float (GValue *value,
       gfloat v_float);
extern
gfloat g_value_get_float (const GValue *value);
extern
void g_value_set_double (GValue *value,
       gdouble v_double);
extern
gdouble g_value_get_double (const GValue *value);
extern
void g_value_set_string (GValue *value,
       const gchar *v_string);
extern
void g_value_set_static_string (GValue *value,
       const gchar *v_string);
extern
const gchar * g_value_get_string (const GValue *value);
extern
gchar* g_value_dup_string (const GValue *value);
extern
void g_value_set_pointer (GValue *value,
       gpointer v_pointer);
extern
gpointer g_value_get_pointer (const GValue *value);
extern
GType g_gtype_get_type (void);
extern
void g_value_set_gtype (GValue *value,
       GType v_gtype);
extern
GType g_value_get_gtype (const GValue *value);
extern
void g_value_set_variant (GValue *value,
       GVariant *variant);
extern
void g_value_take_variant (GValue *value,
       GVariant *variant);
extern
GVariant* g_value_get_variant (const GValue *value);
extern
GVariant* g_value_dup_variant (const GValue *value);



extern
GType g_pointer_type_register_static (const gchar *name);


extern
gchar* g_strdup_value_contents (const GValue *value);


extern
void g_value_take_string (GValue *value,
       gchar *v_string);
__attribute__((__deprecated__)) extern
void g_value_set_string_take_ownership (GValue *value,
                                                 gchar *v_string);
# 295 "/usr/include/glib-2.0/gobject/gvaluetypes.h"
typedef gchar* gchararray;
# 37 "/usr/include/glib-2.0/glib-object.h" 2
# 25 "gimprc-deserialize.c" 2

# 1 "../../libgimpcolor/gimpcolor.h" 1
# 24 "../../libgimpcolor/gimpcolor.h"
# 1 "../../libgimpcolor/gimpcolortypes.h" 1
# 27 "../../libgimpcolor/gimpcolortypes.h"
typedef struct _GimpColorManaged GimpColorManaged;





typedef struct _GimpRGB GimpRGB;
typedef struct _GimpHSV GimpHSV;
typedef struct _GimpHSL GimpHSL;
typedef struct _GimpCMYK GimpCMYK;
# 48 "../../libgimpcolor/gimpcolortypes.h"
struct _GimpRGB
{
  gdouble r, g, b, a;
};
# 63 "../../libgimpcolor/gimpcolortypes.h"
struct _GimpHSV
{
  gdouble h, s, v, a;
};
# 78 "../../libgimpcolor/gimpcolortypes.h"
struct _GimpHSL
{
  gdouble h, s, l, a;
};
# 96 "../../libgimpcolor/gimpcolortypes.h"
struct _GimpCMYK
{
  gdouble c, m, y, k, a;
};


typedef void (* GimpRenderFunc) (gdouble x,
                                   gdouble y,
                                   GimpRGB *color,
                                   gpointer data);
typedef void (* GimpPutPixelFunc) (gint x,
                                   gint y,
                                   GimpRGB *color,
                                   gpointer data);
typedef void (* GimpProgressFunc) (gint min,
                                   gint max,
                                   gint current,
                                   gpointer data);
# 25 "../../libgimpcolor/gimpcolor.h" 2

# 1 "../../libgimpcolor/gimpadaptivesupersample.h" 1
# 34 "../../libgimpcolor/gimpadaptivesupersample.h"
gulong gimp_adaptive_supersample_area (gint x1,
                                         gint y1,
                                         gint x2,
                                         gint y2,
                                         gint max_depth,
                                         gdouble threshold,
                                         GimpRenderFunc render_func,
                                         gpointer render_data,
                                         GimpPutPixelFunc put_pixel_func,
                                         gpointer put_pixel_data,
                                         GimpProgressFunc progress_func,
                                         gpointer progress_data);
# 27 "../../libgimpcolor/gimpcolor.h" 2
# 1 "../../libgimpcolor/gimpbilinear.h" 1
# 34 "../../libgimpcolor/gimpbilinear.h"
gdouble gimp_bilinear (gdouble x,
                                  gdouble y,
                                  gdouble *values);
guchar gimp_bilinear_8 (gdouble x,
                                  gdouble y,
                                  guchar *values);
guint16 gimp_bilinear_16 (gdouble x,
                                  gdouble y,
                                  guint16 *values);
guint32 gimp_bilinear_32 (gdouble x,
                                  gdouble y,
                                  guint32 *values);
GimpRGB gimp_bilinear_rgb (gdouble x,
                                  gdouble y,
                                  GimpRGB *values);
GimpRGB gimp_bilinear_rgba (gdouble x,
                                  gdouble y,
                                  GimpRGB *values);
void gimp_bilinear_pixels_8 (guchar *dest,
                                  gdouble x,
                                  gdouble y,
                                  guint bpp,
                                  gboolean has_alpha,
                                  guchar **values);
# 28 "../../libgimpcolor/gimpcolor.h" 2
# 1 "../../libgimpcolor/gimpcairocolor.h" 1
# 27 "../../libgimpcolor/gimpcairocolor.h"
void gimp_cairo_set_source_rgb (cairo_t *cr,
                                                  const GimpRGB *color);
void gimp_cairo_set_source_rgba (cairo_t *cr,
                                                  const GimpRGB *color);

cairo_pattern_t * gimp_cairo_checkerboard_create (cairo_t *cr,
                                                  gint size,
                                                  const GimpRGB *light,
                                                  const GimpRGB *dark);
# 29 "../../libgimpcolor/gimpcolor.h" 2
# 1 "../../libgimpcolor/gimpcolormanaged.h" 1
# 40 "../../libgimpcolor/gimpcolormanaged.h"
typedef struct _GimpColorManagedInterface GimpColorManagedInterface;

struct _GimpColorManagedInterface
{
  GTypeInterface base_iface;


  const guint8 * (* get_icc_profile) (GimpColorManaged *managed,
                                      gsize *len);


  void (* profile_changed) (GimpColorManaged *managed);
};


GType gimp_color_managed_interface_get_type (void) __attribute__((__const__));

const guint8 * gimp_color_managed_get_icc_profile (GimpColorManaged *managed,
                                                      gsize *len);
void gimp_color_managed_profile_changed (GimpColorManaged *managed);
# 30 "../../libgimpcolor/gimpcolor.h" 2
# 1 "../../libgimpcolor/gimpcolorspace.h" 1
# 36 "../../libgimpcolor/gimpcolorspace.h"
void gimp_rgb_to_hsv (const GimpRGB *rgb,
                                 GimpHSV *hsv);
void gimp_rgb_to_hsl (const GimpRGB *rgb,
                                 GimpHSL *hsl);
void gimp_rgb_to_cmyk (const GimpRGB *rgb,
                                 gdouble pullout,
                                 GimpCMYK *cmyk);

void gimp_hsv_to_rgb (const GimpHSV *hsv,
                                 GimpRGB *rgb);
void gimp_hsl_to_rgb (const GimpHSL *hsl,
                                 GimpRGB *rgb);
void gimp_cmyk_to_rgb (const GimpCMYK *cmyk,
                                 GimpRGB *rgb);

void gimp_rgb_to_hwb (const GimpRGB *rgb,
                                 gdouble *hue,
                                 gdouble *whiteness,
                                 gdouble *blackness);
void gimp_hwb_to_rgb (gdouble hue,
                                 gdouble whiteness,
                                 gdouble blackness,
                                 GimpRGB *rgb);




void gimp_rgb_to_hsv_int (gint *red ,
                                 gint *green ,
                                 gint *blue );
void gimp_hsv_to_rgb_int (gint *hue ,
                                 gint *saturation ,
                                 gint *value );

void gimp_rgb_to_cmyk_int (gint *red ,
                                 gint *green ,
                                 gint *blue ,
                                 gint *pullout );
void gimp_cmyk_to_rgb_int (gint *cyan ,
                                 gint *magenta ,
                                 gint *yellow ,
                                 gint *black );

void gimp_rgb_to_hsl_int (gint *red ,
                                 gint *green ,
                                 gint *blue );
gint gimp_rgb_to_l_int (gint red,
                                 gint green,
                                 gint blue);
void gimp_hsl_to_rgb_int (gint *hue ,
                                 gint *saturation ,
                                 gint *lightness );




void gimp_rgb_to_hsv4 (const guchar *rgb,
                                 gdouble *hue,
                                 gdouble *saturation,
                                 gdouble *value);
void gimp_hsv_to_rgb4 (guchar *rgb,
                                 gdouble hue,
                                 gdouble saturation,
                                 gdouble value);
# 31 "../../libgimpcolor/gimpcolor.h" 2
# 1 "../../libgimpcolor/gimpcmyk.h" 1
# 38 "../../libgimpcolor/gimpcmyk.h"
GType gimp_cmyk_get_type (void) __attribute__((__const__));

void gimp_cmyk_set (GimpCMYK *cmyk,
                              gdouble cyan,
                              gdouble magenta,
                              gdouble yellow,
                              gdouble black);
void gimp_cmyk_set_uchar (GimpCMYK *cmyk,
                              guchar cyan,
                              guchar magenta,
                              guchar yellow,
                              guchar black);
void gimp_cmyk_get_uchar (const GimpCMYK *cmyk,
                              guchar *cyan,
                              guchar *magenta,
                              guchar *yellow,
                              guchar *black);

void gimp_cmyka_set (GimpCMYK *cmyka,
                              gdouble cyan,
                              gdouble magenta,
                              gdouble yellow,
                              gdouble black,
                              gdouble alpha);
void gimp_cmyka_set_uchar (GimpCMYK *cmyka,
                              guchar cyan,
                              guchar magenta,
                              guchar yellow,
                              guchar black,
                              guchar alpha);
void gimp_cmyka_get_uchar (const GimpCMYK *cmyka,
                              guchar *cyan,
                              guchar *magenta,
                              guchar *yellow,
                              guchar *black,
                              guchar *alpha);
# 32 "../../libgimpcolor/gimpcolor.h" 2
# 1 "../../libgimpcolor/gimphsl.h" 1
# 37 "../../libgimpcolor/gimphsl.h"
GType gimp_hsl_get_type (void) __attribute__((__const__));

void gimp_hsl_set (GimpHSL *hsl,
                             gdouble h,
                             gdouble s,
                             gdouble l);
# 33 "../../libgimpcolor/gimpcolor.h" 2
# 1 "../../libgimpcolor/gimphsv.h" 1
# 37 "../../libgimpcolor/gimphsv.h"
GType gimp_hsv_get_type (void) __attribute__((__const__));

void gimp_hsv_set (GimpHSV *hsv,
                             gdouble hue,
                             gdouble saturation,
                             gdouble value);
void gimp_hsv_clamp (GimpHSV *hsv);

void gimp_hsva_set (GimpHSV *hsva,
                             gdouble hue,
                             gdouble saturation,
                             gdouble value,
                             gdouble alpha);
# 34 "../../libgimpcolor/gimpcolor.h" 2
# 1 "../../libgimpcolor/gimprgb.h" 1
# 38 "../../libgimpcolor/gimprgb.h"
GType gimp_rgb_get_type (void) __attribute__((__const__));

void gimp_value_get_rgb (const GValue *value,
                                     GimpRGB *rgb);
void gimp_value_set_rgb (GValue *value,
                                     const GimpRGB *rgb);
# 54 "../../libgimpcolor/gimprgb.h"
GType gimp_param_rgb_get_type (void) __attribute__((__const__));

GParamSpec * gimp_param_spec_rgb (const gchar *name,
                                            const gchar *nick,
                                            const gchar *blurb,
                                            gboolean has_alpha,
                                            const GimpRGB *default_value,
                                            GParamFlags flags);

gboolean gimp_param_spec_rgb_has_alpha (GParamSpec *pspec);




typedef enum
{
  GIMP_RGB_COMPOSITE_NONE = 0,
  GIMP_RGB_COMPOSITE_NORMAL,
  GIMP_RGB_COMPOSITE_BEHIND
} GimpRGBCompositeMode;


void gimp_rgb_set (GimpRGB *rgb,
                                    gdouble red,
                                    gdouble green,
                                    gdouble blue);
void gimp_rgb_set_alpha (GimpRGB *rgb,
                                    gdouble alpha);

void gimp_rgb_set_uchar (GimpRGB *rgb,
                                    guchar red,
                                    guchar green,
                                    guchar blue);
void gimp_rgb_get_uchar (const GimpRGB *rgb,
                                    guchar *red,
                                    guchar *green,
                                    guchar *blue);

gboolean gimp_rgb_parse_name (GimpRGB *rgb,
                                    const gchar *name,
                                    gint len);
gboolean gimp_rgb_parse_hex (GimpRGB *rgb,
                                    const gchar *hex,
                                    gint len);
gboolean gimp_rgb_parse_css (GimpRGB *rgb,
                                    const gchar *css,
                                    gint len);

void gimp_rgb_add (GimpRGB *rgb1,
                                    const GimpRGB *rgb2);
void gimp_rgb_subtract (GimpRGB *rgb1,
                                    const GimpRGB *rgb2);
void gimp_rgb_multiply (GimpRGB *rgb1,
                                    gdouble factor);
gdouble gimp_rgb_distance (const GimpRGB *rgb1,
                                    const GimpRGB *rgb2);

gdouble gimp_rgb_max (const GimpRGB *rgb);
gdouble gimp_rgb_min (const GimpRGB *rgb);
void gimp_rgb_clamp (GimpRGB *rgb);

void gimp_rgb_gamma (GimpRGB *rgb,
                                    gdouble gamma);

gdouble gimp_rgb_luminance (const GimpRGB *rgb);
guchar gimp_rgb_luminance_uchar (const GimpRGB *rgb);






void gimp_rgb_composite (GimpRGB *color1,
                                    const GimpRGB *color2,
                                    GimpRGBCompositeMode mode);


gint gimp_rgb_list_names (const gchar ***names,
                                    GimpRGB **colors);


void gimp_rgba_set (GimpRGB *rgba,
                                    gdouble red,
                                    gdouble green,
                                    gdouble blue,
                                    gdouble alpha);

void gimp_rgba_set_uchar (GimpRGB *rgba,
                                    guchar red,
                                    guchar green,
                                    guchar blue,
                                    guchar alpha);
void gimp_rgba_get_uchar (const GimpRGB *rgba,
                                    guchar *red,
                                    guchar *green,
                                    guchar *blue,
                                    guchar *alpha);

gboolean gimp_rgba_parse_css (GimpRGB *rgba,
                                    const gchar *css,
                                    gint len);

void gimp_rgba_add (GimpRGB *rgba1,
                                    const GimpRGB *rgba2);
void gimp_rgba_subtract (GimpRGB *rgba1,
                                    const GimpRGB *rgba2);
void gimp_rgba_multiply (GimpRGB *rgba,
                                    gdouble factor);

gdouble gimp_rgba_distance (const GimpRGB *rgba1,
                                    const GimpRGB *rgba2);
# 35 "../../libgimpcolor/gimpcolor.h" 2
# 27 "gimprc-deserialize.c" 2
# 1 "../../libgimpmath/gimpmath.h" 1
# 25 "../../libgimpmath/gimpmath.h"
# 1 "/usr/include/math.h" 1 3 4
# 33 "/usr/include/math.h" 3 4
# 1 "/usr/include/bits/huge_val.h" 1 3 4
# 34 "/usr/include/math.h" 2 3 4

# 1 "/usr/include/bits/huge_valf.h" 1 3 4
# 36 "/usr/include/math.h" 2 3 4
# 1 "/usr/include/bits/huge_vall.h" 1 3 4
# 37 "/usr/include/math.h" 2 3 4


# 1 "/usr/include/bits/inf.h" 1 3 4
# 40 "/usr/include/math.h" 2 3 4


# 1 "/usr/include/bits/nan.h" 1 3 4
# 43 "/usr/include/math.h" 2 3 4



# 1 "/usr/include/bits/mathdef.h" 1 3 4
# 28 "/usr/include/bits/mathdef.h" 3 4
typedef float float_t;
typedef double double_t;
# 47 "/usr/include/math.h" 2 3 4
# 70 "/usr/include/math.h" 3 4
# 1 "/usr/include/bits/mathcalls.h" 1 3 4
# 54 "/usr/include/bits/mathcalls.h" 3 4
extern double acos (double __x) __attribute__ ((__nothrow__ )); extern double __acos (double __x) __attribute__ ((__nothrow__ ));

extern double asin (double __x) __attribute__ ((__nothrow__ )); extern double __asin (double __x) __attribute__ ((__nothrow__ ));

extern double atan (double __x) __attribute__ ((__nothrow__ )); extern double __atan (double __x) __attribute__ ((__nothrow__ ));

extern double atan2 (double __y, double __x) __attribute__ ((__nothrow__ )); extern double __atan2 (double __y, double __x) __attribute__ ((__nothrow__ ));


extern double cos (double __x) __attribute__ ((__nothrow__ )); extern double __cos (double __x) __attribute__ ((__nothrow__ ));

extern double sin (double __x) __attribute__ ((__nothrow__ )); extern double __sin (double __x) __attribute__ ((__nothrow__ ));

extern double tan (double __x) __attribute__ ((__nothrow__ )); extern double __tan (double __x) __attribute__ ((__nothrow__ ));




extern double cosh (double __x) __attribute__ ((__nothrow__ )); extern double __cosh (double __x) __attribute__ ((__nothrow__ ));

extern double sinh (double __x) __attribute__ ((__nothrow__ )); extern double __sinh (double __x) __attribute__ ((__nothrow__ ));

extern double tanh (double __x) __attribute__ ((__nothrow__ )); extern double __tanh (double __x) __attribute__ ((__nothrow__ ));
# 88 "/usr/include/bits/mathcalls.h" 3 4
extern double acosh (double __x) __attribute__ ((__nothrow__ )); extern double __acosh (double __x) __attribute__ ((__nothrow__ ));

extern double asinh (double __x) __attribute__ ((__nothrow__ )); extern double __asinh (double __x) __attribute__ ((__nothrow__ ));

extern double atanh (double __x) __attribute__ ((__nothrow__ )); extern double __atanh (double __x) __attribute__ ((__nothrow__ ));







extern double exp (double __x) __attribute__ ((__nothrow__ )); extern double __exp (double __x) __attribute__ ((__nothrow__ ));


extern double frexp (double __x, int *__exponent) __attribute__ ((__nothrow__ )); extern double __frexp (double __x, int *__exponent) __attribute__ ((__nothrow__ ));


extern double ldexp (double __x, int __exponent) __attribute__ ((__nothrow__ )); extern double __ldexp (double __x, int __exponent) __attribute__ ((__nothrow__ ));


extern double log (double __x) __attribute__ ((__nothrow__ )); extern double __log (double __x) __attribute__ ((__nothrow__ ));


extern double log10 (double __x) __attribute__ ((__nothrow__ )); extern double __log10 (double __x) __attribute__ ((__nothrow__ ));


extern double modf (double __x, double *__iptr) __attribute__ ((__nothrow__ )); extern double __modf (double __x, double *__iptr) __attribute__ ((__nothrow__ ))
     __attribute__ ((__nonnull__ (2)));
# 129 "/usr/include/bits/mathcalls.h" 3 4
extern double expm1 (double __x) __attribute__ ((__nothrow__ )); extern double __expm1 (double __x) __attribute__ ((__nothrow__ ));


extern double log1p (double __x) __attribute__ ((__nothrow__ )); extern double __log1p (double __x) __attribute__ ((__nothrow__ ));


extern double logb (double __x) __attribute__ ((__nothrow__ )); extern double __logb (double __x) __attribute__ ((__nothrow__ ));






extern double exp2 (double __x) __attribute__ ((__nothrow__ )); extern double __exp2 (double __x) __attribute__ ((__nothrow__ ));


extern double log2 (double __x) __attribute__ ((__nothrow__ )); extern double __log2 (double __x) __attribute__ ((__nothrow__ ));
# 154 "/usr/include/bits/mathcalls.h" 3 4
extern double pow (double __x, double __y) __attribute__ ((__nothrow__ )); extern double __pow (double __x, double __y) __attribute__ ((__nothrow__ ));


extern double sqrt (double __x) __attribute__ ((__nothrow__ )); extern double __sqrt (double __x) __attribute__ ((__nothrow__ ));





extern double hypot (double __x, double __y) __attribute__ ((__nothrow__ )); extern double __hypot (double __x, double __y) __attribute__ ((__nothrow__ ));






extern double cbrt (double __x) __attribute__ ((__nothrow__ )); extern double __cbrt (double __x) __attribute__ ((__nothrow__ ));
# 179 "/usr/include/bits/mathcalls.h" 3 4
extern double ceil (double __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern double __ceil (double __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));


extern double fabs (double __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern double __fabs (double __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));


extern double floor (double __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern double __floor (double __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));


extern double fmod (double __x, double __y) __attribute__ ((__nothrow__ )); extern double __fmod (double __x, double __y) __attribute__ ((__nothrow__ ));




extern int __isinf (double __value) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));


extern int __finite (double __value) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));





extern int isinf (double __value) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));


extern int finite (double __value) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));


extern double drem (double __x, double __y) __attribute__ ((__nothrow__ )); extern double __drem (double __x, double __y) __attribute__ ((__nothrow__ ));



extern double significand (double __x) __attribute__ ((__nothrow__ )); extern double __significand (double __x) __attribute__ ((__nothrow__ ));





extern double copysign (double __x, double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern double __copysign (double __x, double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));






extern double nan (const char *__tagb) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern double __nan (const char *__tagb) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));





extern int __isnan (double __value) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));



extern int isnan (double __value) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));


extern double j0 (double) __attribute__ ((__nothrow__ )); extern double __j0 (double) __attribute__ ((__nothrow__ ));
extern double j1 (double) __attribute__ ((__nothrow__ )); extern double __j1 (double) __attribute__ ((__nothrow__ ));
extern double jn (int, double) __attribute__ ((__nothrow__ )); extern double __jn (int, double) __attribute__ ((__nothrow__ ));
extern double y0 (double) __attribute__ ((__nothrow__ )); extern double __y0 (double) __attribute__ ((__nothrow__ ));
extern double y1 (double) __attribute__ ((__nothrow__ )); extern double __y1 (double) __attribute__ ((__nothrow__ ));
extern double yn (int, double) __attribute__ ((__nothrow__ )); extern double __yn (int, double) __attribute__ ((__nothrow__ ));






extern double erf (double) __attribute__ ((__nothrow__ )); extern double __erf (double) __attribute__ ((__nothrow__ ));
extern double erfc (double) __attribute__ ((__nothrow__ )); extern double __erfc (double) __attribute__ ((__nothrow__ ));
extern double lgamma (double) __attribute__ ((__nothrow__ )); extern double __lgamma (double) __attribute__ ((__nothrow__ ));






extern double tgamma (double) __attribute__ ((__nothrow__ )); extern double __tgamma (double) __attribute__ ((__nothrow__ ));





extern double gamma (double) __attribute__ ((__nothrow__ )); extern double __gamma (double) __attribute__ ((__nothrow__ ));






extern double lgamma_r (double, int *__signgamp) __attribute__ ((__nothrow__ )); extern double __lgamma_r (double, int *__signgamp) __attribute__ ((__nothrow__ ));







extern double rint (double __x) __attribute__ ((__nothrow__ )); extern double __rint (double __x) __attribute__ ((__nothrow__ ));


extern double nextafter (double __x, double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern double __nextafter (double __x, double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));

extern double nexttoward (double __x, long double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern double __nexttoward (double __x, long double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));



extern double remainder (double __x, double __y) __attribute__ ((__nothrow__ )); extern double __remainder (double __x, double __y) __attribute__ ((__nothrow__ ));



extern double scalbn (double __x, int __n) __attribute__ ((__nothrow__ )); extern double __scalbn (double __x, int __n) __attribute__ ((__nothrow__ ));



extern int ilogb (double __x) __attribute__ ((__nothrow__ )); extern int __ilogb (double __x) __attribute__ ((__nothrow__ ));




extern double scalbln (double __x, long int __n) __attribute__ ((__nothrow__ )); extern double __scalbln (double __x, long int __n) __attribute__ ((__nothrow__ ));



extern double nearbyint (double __x) __attribute__ ((__nothrow__ )); extern double __nearbyint (double __x) __attribute__ ((__nothrow__ ));



extern double round (double __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern double __round (double __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));



extern double trunc (double __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern double __trunc (double __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));




extern double remquo (double __x, double __y, int *__quo) __attribute__ ((__nothrow__ )); extern double __remquo (double __x, double __y, int *__quo) __attribute__ ((__nothrow__ ));






extern long int lrint (double __x) __attribute__ ((__nothrow__ )); extern long int __lrint (double __x) __attribute__ ((__nothrow__ ));
extern long long int llrint (double __x) __attribute__ ((__nothrow__ )); extern long long int __llrint (double __x) __attribute__ ((__nothrow__ ));



extern long int lround (double __x) __attribute__ ((__nothrow__ )); extern long int __lround (double __x) __attribute__ ((__nothrow__ ));
extern long long int llround (double __x) __attribute__ ((__nothrow__ )); extern long long int __llround (double __x) __attribute__ ((__nothrow__ ));



extern double fdim (double __x, double __y) __attribute__ ((__nothrow__ )); extern double __fdim (double __x, double __y) __attribute__ ((__nothrow__ ));


extern double fmax (double __x, double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern double __fmax (double __x, double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));


extern double fmin (double __x, double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern double __fmin (double __x, double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));



extern int __fpclassify (double __value) __attribute__ ((__nothrow__ ))
     __attribute__ ((__const__));


extern int __signbit (double __value) __attribute__ ((__nothrow__ ))
     __attribute__ ((__const__));



extern double fma (double __x, double __y, double __z) __attribute__ ((__nothrow__ )); extern double __fma (double __x, double __y, double __z) __attribute__ ((__nothrow__ ));
# 364 "/usr/include/bits/mathcalls.h" 3 4
extern double scalb (double __x, double __n) __attribute__ ((__nothrow__ )); extern double __scalb (double __x, double __n) __attribute__ ((__nothrow__ ));
# 71 "/usr/include/math.h" 2 3 4
# 89 "/usr/include/math.h" 3 4
# 1 "/usr/include/bits/mathcalls.h" 1 3 4
# 54 "/usr/include/bits/mathcalls.h" 3 4
extern float acosf (float __x) __attribute__ ((__nothrow__ )); extern float __acosf (float __x) __attribute__ ((__nothrow__ ));

extern float asinf (float __x) __attribute__ ((__nothrow__ )); extern float __asinf (float __x) __attribute__ ((__nothrow__ ));

extern float atanf (float __x) __attribute__ ((__nothrow__ )); extern float __atanf (float __x) __attribute__ ((__nothrow__ ));

extern float atan2f (float __y, float __x) __attribute__ ((__nothrow__ )); extern float __atan2f (float __y, float __x) __attribute__ ((__nothrow__ ));


extern float cosf (float __x) __attribute__ ((__nothrow__ )); extern float __cosf (float __x) __attribute__ ((__nothrow__ ));

extern float sinf (float __x) __attribute__ ((__nothrow__ )); extern float __sinf (float __x) __attribute__ ((__nothrow__ ));

extern float tanf (float __x) __attribute__ ((__nothrow__ )); extern float __tanf (float __x) __attribute__ ((__nothrow__ ));




extern float coshf (float __x) __attribute__ ((__nothrow__ )); extern float __coshf (float __x) __attribute__ ((__nothrow__ ));

extern float sinhf (float __x) __attribute__ ((__nothrow__ )); extern float __sinhf (float __x) __attribute__ ((__nothrow__ ));

extern float tanhf (float __x) __attribute__ ((__nothrow__ )); extern float __tanhf (float __x) __attribute__ ((__nothrow__ ));
# 88 "/usr/include/bits/mathcalls.h" 3 4
extern float acoshf (float __x) __attribute__ ((__nothrow__ )); extern float __acoshf (float __x) __attribute__ ((__nothrow__ ));

extern float asinhf (float __x) __attribute__ ((__nothrow__ )); extern float __asinhf (float __x) __attribute__ ((__nothrow__ ));

extern float atanhf (float __x) __attribute__ ((__nothrow__ )); extern float __atanhf (float __x) __attribute__ ((__nothrow__ ));







extern float expf (float __x) __attribute__ ((__nothrow__ )); extern float __expf (float __x) __attribute__ ((__nothrow__ ));


extern float frexpf (float __x, int *__exponent) __attribute__ ((__nothrow__ )); extern float __frexpf (float __x, int *__exponent) __attribute__ ((__nothrow__ ));


extern float ldexpf (float __x, int __exponent) __attribute__ ((__nothrow__ )); extern float __ldexpf (float __x, int __exponent) __attribute__ ((__nothrow__ ));


extern float logf (float __x) __attribute__ ((__nothrow__ )); extern float __logf (float __x) __attribute__ ((__nothrow__ ));


extern float log10f (float __x) __attribute__ ((__nothrow__ )); extern float __log10f (float __x) __attribute__ ((__nothrow__ ));


extern float modff (float __x, float *__iptr) __attribute__ ((__nothrow__ )); extern float __modff (float __x, float *__iptr) __attribute__ ((__nothrow__ ))
     __attribute__ ((__nonnull__ (2)));
# 129 "/usr/include/bits/mathcalls.h" 3 4
extern float expm1f (float __x) __attribute__ ((__nothrow__ )); extern float __expm1f (float __x) __attribute__ ((__nothrow__ ));


extern float log1pf (float __x) __attribute__ ((__nothrow__ )); extern float __log1pf (float __x) __attribute__ ((__nothrow__ ));


extern float logbf (float __x) __attribute__ ((__nothrow__ )); extern float __logbf (float __x) __attribute__ ((__nothrow__ ));






extern float exp2f (float __x) __attribute__ ((__nothrow__ )); extern float __exp2f (float __x) __attribute__ ((__nothrow__ ));


extern float log2f (float __x) __attribute__ ((__nothrow__ )); extern float __log2f (float __x) __attribute__ ((__nothrow__ ));
# 154 "/usr/include/bits/mathcalls.h" 3 4
extern float powf (float __x, float __y) __attribute__ ((__nothrow__ )); extern float __powf (float __x, float __y) __attribute__ ((__nothrow__ ));


extern float sqrtf (float __x) __attribute__ ((__nothrow__ )); extern float __sqrtf (float __x) __attribute__ ((__nothrow__ ));





extern float hypotf (float __x, float __y) __attribute__ ((__nothrow__ )); extern float __hypotf (float __x, float __y) __attribute__ ((__nothrow__ ));






extern float cbrtf (float __x) __attribute__ ((__nothrow__ )); extern float __cbrtf (float __x) __attribute__ ((__nothrow__ ));
# 179 "/usr/include/bits/mathcalls.h" 3 4
extern float ceilf (float __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern float __ceilf (float __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));


extern float fabsf (float __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern float __fabsf (float __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));


extern float floorf (float __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern float __floorf (float __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));


extern float fmodf (float __x, float __y) __attribute__ ((__nothrow__ )); extern float __fmodf (float __x, float __y) __attribute__ ((__nothrow__ ));




extern int __isinff (float __value) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));


extern int __finitef (float __value) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));





extern int isinff (float __value) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));


extern int finitef (float __value) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));


extern float dremf (float __x, float __y) __attribute__ ((__nothrow__ )); extern float __dremf (float __x, float __y) __attribute__ ((__nothrow__ ));



extern float significandf (float __x) __attribute__ ((__nothrow__ )); extern float __significandf (float __x) __attribute__ ((__nothrow__ ));





extern float copysignf (float __x, float __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern float __copysignf (float __x, float __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));






extern float nanf (const char *__tagb) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern float __nanf (const char *__tagb) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));





extern int __isnanf (float __value) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));



extern int isnanf (float __value) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));


extern float j0f (float) __attribute__ ((__nothrow__ )); extern float __j0f (float) __attribute__ ((__nothrow__ ));
extern float j1f (float) __attribute__ ((__nothrow__ )); extern float __j1f (float) __attribute__ ((__nothrow__ ));
extern float jnf (int, float) __attribute__ ((__nothrow__ )); extern float __jnf (int, float) __attribute__ ((__nothrow__ ));
extern float y0f (float) __attribute__ ((__nothrow__ )); extern float __y0f (float) __attribute__ ((__nothrow__ ));
extern float y1f (float) __attribute__ ((__nothrow__ )); extern float __y1f (float) __attribute__ ((__nothrow__ ));
extern float ynf (int, float) __attribute__ ((__nothrow__ )); extern float __ynf (int, float) __attribute__ ((__nothrow__ ));






extern float erff (float) __attribute__ ((__nothrow__ )); extern float __erff (float) __attribute__ ((__nothrow__ ));
extern float erfcf (float) __attribute__ ((__nothrow__ )); extern float __erfcf (float) __attribute__ ((__nothrow__ ));
extern float lgammaf (float) __attribute__ ((__nothrow__ )); extern float __lgammaf (float) __attribute__ ((__nothrow__ ));






extern float tgammaf (float) __attribute__ ((__nothrow__ )); extern float __tgammaf (float) __attribute__ ((__nothrow__ ));





extern float gammaf (float) __attribute__ ((__nothrow__ )); extern float __gammaf (float) __attribute__ ((__nothrow__ ));






extern float lgammaf_r (float, int *__signgamp) __attribute__ ((__nothrow__ )); extern float __lgammaf_r (float, int *__signgamp) __attribute__ ((__nothrow__ ));







extern float rintf (float __x) __attribute__ ((__nothrow__ )); extern float __rintf (float __x) __attribute__ ((__nothrow__ ));


extern float nextafterf (float __x, float __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern float __nextafterf (float __x, float __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));

extern float nexttowardf (float __x, long double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern float __nexttowardf (float __x, long double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));



extern float remainderf (float __x, float __y) __attribute__ ((__nothrow__ )); extern float __remainderf (float __x, float __y) __attribute__ ((__nothrow__ ));



extern float scalbnf (float __x, int __n) __attribute__ ((__nothrow__ )); extern float __scalbnf (float __x, int __n) __attribute__ ((__nothrow__ ));



extern int ilogbf (float __x) __attribute__ ((__nothrow__ )); extern int __ilogbf (float __x) __attribute__ ((__nothrow__ ));




extern float scalblnf (float __x, long int __n) __attribute__ ((__nothrow__ )); extern float __scalblnf (float __x, long int __n) __attribute__ ((__nothrow__ ));



extern float nearbyintf (float __x) __attribute__ ((__nothrow__ )); extern float __nearbyintf (float __x) __attribute__ ((__nothrow__ ));



extern float roundf (float __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern float __roundf (float __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));



extern float truncf (float __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern float __truncf (float __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));




extern float remquof (float __x, float __y, int *__quo) __attribute__ ((__nothrow__ )); extern float __remquof (float __x, float __y, int *__quo) __attribute__ ((__nothrow__ ));






extern long int lrintf (float __x) __attribute__ ((__nothrow__ )); extern long int __lrintf (float __x) __attribute__ ((__nothrow__ ));
extern long long int llrintf (float __x) __attribute__ ((__nothrow__ )); extern long long int __llrintf (float __x) __attribute__ ((__nothrow__ ));



extern long int lroundf (float __x) __attribute__ ((__nothrow__ )); extern long int __lroundf (float __x) __attribute__ ((__nothrow__ ));
extern long long int llroundf (float __x) __attribute__ ((__nothrow__ )); extern long long int __llroundf (float __x) __attribute__ ((__nothrow__ ));



extern float fdimf (float __x, float __y) __attribute__ ((__nothrow__ )); extern float __fdimf (float __x, float __y) __attribute__ ((__nothrow__ ));


extern float fmaxf (float __x, float __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern float __fmaxf (float __x, float __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));


extern float fminf (float __x, float __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern float __fminf (float __x, float __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));



extern int __fpclassifyf (float __value) __attribute__ ((__nothrow__ ))
     __attribute__ ((__const__));


extern int __signbitf (float __value) __attribute__ ((__nothrow__ ))
     __attribute__ ((__const__));



extern float fmaf (float __x, float __y, float __z) __attribute__ ((__nothrow__ )); extern float __fmaf (float __x, float __y, float __z) __attribute__ ((__nothrow__ ));
# 364 "/usr/include/bits/mathcalls.h" 3 4
extern float scalbf (float __x, float __n) __attribute__ ((__nothrow__ )); extern float __scalbf (float __x, float __n) __attribute__ ((__nothrow__ ));
# 90 "/usr/include/math.h" 2 3 4
# 133 "/usr/include/math.h" 3 4
# 1 "/usr/include/bits/mathcalls.h" 1 3 4
# 54 "/usr/include/bits/mathcalls.h" 3 4
extern long double acosl (long double __x) __attribute__ ((__nothrow__ )); extern long double __acosl (long double __x) __attribute__ ((__nothrow__ ));

extern long double asinl (long double __x) __attribute__ ((__nothrow__ )); extern long double __asinl (long double __x) __attribute__ ((__nothrow__ ));

extern long double atanl (long double __x) __attribute__ ((__nothrow__ )); extern long double __atanl (long double __x) __attribute__ ((__nothrow__ ));

extern long double atan2l (long double __y, long double __x) __attribute__ ((__nothrow__ )); extern long double __atan2l (long double __y, long double __x) __attribute__ ((__nothrow__ ));


extern long double cosl (long double __x) __attribute__ ((__nothrow__ )); extern long double __cosl (long double __x) __attribute__ ((__nothrow__ ));

extern long double sinl (long double __x) __attribute__ ((__nothrow__ )); extern long double __sinl (long double __x) __attribute__ ((__nothrow__ ));

extern long double tanl (long double __x) __attribute__ ((__nothrow__ )); extern long double __tanl (long double __x) __attribute__ ((__nothrow__ ));




extern long double coshl (long double __x) __attribute__ ((__nothrow__ )); extern long double __coshl (long double __x) __attribute__ ((__nothrow__ ));

extern long double sinhl (long double __x) __attribute__ ((__nothrow__ )); extern long double __sinhl (long double __x) __attribute__ ((__nothrow__ ));

extern long double tanhl (long double __x) __attribute__ ((__nothrow__ )); extern long double __tanhl (long double __x) __attribute__ ((__nothrow__ ));
# 88 "/usr/include/bits/mathcalls.h" 3 4
extern long double acoshl (long double __x) __attribute__ ((__nothrow__ )); extern long double __acoshl (long double __x) __attribute__ ((__nothrow__ ));

extern long double asinhl (long double __x) __attribute__ ((__nothrow__ )); extern long double __asinhl (long double __x) __attribute__ ((__nothrow__ ));

extern long double atanhl (long double __x) __attribute__ ((__nothrow__ )); extern long double __atanhl (long double __x) __attribute__ ((__nothrow__ ));







extern long double expl (long double __x) __attribute__ ((__nothrow__ )); extern long double __expl (long double __x) __attribute__ ((__nothrow__ ));


extern long double frexpl (long double __x, int *__exponent) __attribute__ ((__nothrow__ )); extern long double __frexpl (long double __x, int *__exponent) __attribute__ ((__nothrow__ ));


extern long double ldexpl (long double __x, int __exponent) __attribute__ ((__nothrow__ )); extern long double __ldexpl (long double __x, int __exponent) __attribute__ ((__nothrow__ ));


extern long double logl (long double __x) __attribute__ ((__nothrow__ )); extern long double __logl (long double __x) __attribute__ ((__nothrow__ ));


extern long double log10l (long double __x) __attribute__ ((__nothrow__ )); extern long double __log10l (long double __x) __attribute__ ((__nothrow__ ));


extern long double modfl (long double __x, long double *__iptr) __attribute__ ((__nothrow__ )); extern long double __modfl (long double __x, long double *__iptr) __attribute__ ((__nothrow__ ))
     __attribute__ ((__nonnull__ (2)));
# 129 "/usr/include/bits/mathcalls.h" 3 4
extern long double expm1l (long double __x) __attribute__ ((__nothrow__ )); extern long double __expm1l (long double __x) __attribute__ ((__nothrow__ ));


extern long double log1pl (long double __x) __attribute__ ((__nothrow__ )); extern long double __log1pl (long double __x) __attribute__ ((__nothrow__ ));


extern long double logbl (long double __x) __attribute__ ((__nothrow__ )); extern long double __logbl (long double __x) __attribute__ ((__nothrow__ ));






extern long double exp2l (long double __x) __attribute__ ((__nothrow__ )); extern long double __exp2l (long double __x) __attribute__ ((__nothrow__ ));


extern long double log2l (long double __x) __attribute__ ((__nothrow__ )); extern long double __log2l (long double __x) __attribute__ ((__nothrow__ ));
# 154 "/usr/include/bits/mathcalls.h" 3 4
extern long double powl (long double __x, long double __y) __attribute__ ((__nothrow__ )); extern long double __powl (long double __x, long double __y) __attribute__ ((__nothrow__ ));


extern long double sqrtl (long double __x) __attribute__ ((__nothrow__ )); extern long double __sqrtl (long double __x) __attribute__ ((__nothrow__ ));





extern long double hypotl (long double __x, long double __y) __attribute__ ((__nothrow__ )); extern long double __hypotl (long double __x, long double __y) __attribute__ ((__nothrow__ ));






extern long double cbrtl (long double __x) __attribute__ ((__nothrow__ )); extern long double __cbrtl (long double __x) __attribute__ ((__nothrow__ ));
# 179 "/usr/include/bits/mathcalls.h" 3 4
extern long double ceill (long double __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern long double __ceill (long double __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));


extern long double fabsl (long double __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern long double __fabsl (long double __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));


extern long double floorl (long double __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern long double __floorl (long double __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));


extern long double fmodl (long double __x, long double __y) __attribute__ ((__nothrow__ )); extern long double __fmodl (long double __x, long double __y) __attribute__ ((__nothrow__ ));




extern int __isinfl (long double __value) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));


extern int __finitel (long double __value) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));





extern int isinfl (long double __value) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));


extern int finitel (long double __value) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));


extern long double dreml (long double __x, long double __y) __attribute__ ((__nothrow__ )); extern long double __dreml (long double __x, long double __y) __attribute__ ((__nothrow__ ));



extern long double significandl (long double __x) __attribute__ ((__nothrow__ )); extern long double __significandl (long double __x) __attribute__ ((__nothrow__ ));





extern long double copysignl (long double __x, long double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern long double __copysignl (long double __x, long double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));






extern long double nanl (const char *__tagb) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern long double __nanl (const char *__tagb) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));





extern int __isnanl (long double __value) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));



extern int isnanl (long double __value) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));


extern long double j0l (long double) __attribute__ ((__nothrow__ )); extern long double __j0l (long double) __attribute__ ((__nothrow__ ));
extern long double j1l (long double) __attribute__ ((__nothrow__ )); extern long double __j1l (long double) __attribute__ ((__nothrow__ ));
extern long double jnl (int, long double) __attribute__ ((__nothrow__ )); extern long double __jnl (int, long double) __attribute__ ((__nothrow__ ));
extern long double y0l (long double) __attribute__ ((__nothrow__ )); extern long double __y0l (long double) __attribute__ ((__nothrow__ ));
extern long double y1l (long double) __attribute__ ((__nothrow__ )); extern long double __y1l (long double) __attribute__ ((__nothrow__ ));
extern long double ynl (int, long double) __attribute__ ((__nothrow__ )); extern long double __ynl (int, long double) __attribute__ ((__nothrow__ ));






extern long double erfl (long double) __attribute__ ((__nothrow__ )); extern long double __erfl (long double) __attribute__ ((__nothrow__ ));
extern long double erfcl (long double) __attribute__ ((__nothrow__ )); extern long double __erfcl (long double) __attribute__ ((__nothrow__ ));
extern long double lgammal (long double) __attribute__ ((__nothrow__ )); extern long double __lgammal (long double) __attribute__ ((__nothrow__ ));






extern long double tgammal (long double) __attribute__ ((__nothrow__ )); extern long double __tgammal (long double) __attribute__ ((__nothrow__ ));





extern long double gammal (long double) __attribute__ ((__nothrow__ )); extern long double __gammal (long double) __attribute__ ((__nothrow__ ));






extern long double lgammal_r (long double, int *__signgamp) __attribute__ ((__nothrow__ )); extern long double __lgammal_r (long double, int *__signgamp) __attribute__ ((__nothrow__ ));







extern long double rintl (long double __x) __attribute__ ((__nothrow__ )); extern long double __rintl (long double __x) __attribute__ ((__nothrow__ ));


extern long double nextafterl (long double __x, long double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern long double __nextafterl (long double __x, long double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));

extern long double nexttowardl (long double __x, long double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern long double __nexttowardl (long double __x, long double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));



extern long double remainderl (long double __x, long double __y) __attribute__ ((__nothrow__ )); extern long double __remainderl (long double __x, long double __y) __attribute__ ((__nothrow__ ));



extern long double scalbnl (long double __x, int __n) __attribute__ ((__nothrow__ )); extern long double __scalbnl (long double __x, int __n) __attribute__ ((__nothrow__ ));



extern int ilogbl (long double __x) __attribute__ ((__nothrow__ )); extern int __ilogbl (long double __x) __attribute__ ((__nothrow__ ));




extern long double scalblnl (long double __x, long int __n) __attribute__ ((__nothrow__ )); extern long double __scalblnl (long double __x, long int __n) __attribute__ ((__nothrow__ ));



extern long double nearbyintl (long double __x) __attribute__ ((__nothrow__ )); extern long double __nearbyintl (long double __x) __attribute__ ((__nothrow__ ));



extern long double roundl (long double __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern long double __roundl (long double __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));



extern long double truncl (long double __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern long double __truncl (long double __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));




extern long double remquol (long double __x, long double __y, int *__quo) __attribute__ ((__nothrow__ )); extern long double __remquol (long double __x, long double __y, int *__quo) __attribute__ ((__nothrow__ ));






extern long int lrintl (long double __x) __attribute__ ((__nothrow__ )); extern long int __lrintl (long double __x) __attribute__ ((__nothrow__ ));
extern long long int llrintl (long double __x) __attribute__ ((__nothrow__ )); extern long long int __llrintl (long double __x) __attribute__ ((__nothrow__ ));



extern long int lroundl (long double __x) __attribute__ ((__nothrow__ )); extern long int __lroundl (long double __x) __attribute__ ((__nothrow__ ));
extern long long int llroundl (long double __x) __attribute__ ((__nothrow__ )); extern long long int __llroundl (long double __x) __attribute__ ((__nothrow__ ));



extern long double fdiml (long double __x, long double __y) __attribute__ ((__nothrow__ )); extern long double __fdiml (long double __x, long double __y) __attribute__ ((__nothrow__ ));


extern long double fmaxl (long double __x, long double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern long double __fmaxl (long double __x, long double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));


extern long double fminl (long double __x, long double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern long double __fminl (long double __x, long double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));



extern int __fpclassifyl (long double __value) __attribute__ ((__nothrow__ ))
     __attribute__ ((__const__));


extern int __signbitl (long double __value) __attribute__ ((__nothrow__ ))
     __attribute__ ((__const__));



extern long double fmal (long double __x, long double __y, long double __z) __attribute__ ((__nothrow__ )); extern long double __fmal (long double __x, long double __y, long double __z) __attribute__ ((__nothrow__ ));
# 364 "/usr/include/bits/mathcalls.h" 3 4
extern long double scalbl (long double __x, long double __n) __attribute__ ((__nothrow__ )); extern long double __scalbl (long double __x, long double __n) __attribute__ ((__nothrow__ ));
# 134 "/usr/include/math.h" 2 3 4
# 149 "/usr/include/math.h" 3 4
extern int signgam;
# 190 "/usr/include/math.h" 3 4
enum
  {
    FP_NAN =

      0,
    FP_INFINITE =

      1,
    FP_ZERO =

      2,
    FP_SUBNORMAL =

      3,
    FP_NORMAL =

      4
  };
# 288 "/usr/include/math.h" 3 4
typedef enum
{
  _IEEE_ = -1,
  _SVID_,
  _XOPEN_,
  _POSIX_,
  _ISOC_
} _LIB_VERSION_TYPE;




extern _LIB_VERSION_TYPE _LIB_VERSION;
# 313 "/usr/include/math.h" 3 4
struct exception

  {
    int type;
    char *name;
    double arg1;
    double arg2;
    double retval;
  };




extern int matherr (struct exception *__exc);
# 26 "../../libgimpmath/gimpmath.h" 2
# 37 "../../libgimpmath/gimpmath.h"
# 1 "../../libgimpmath/gimpmathtypes.h" 1
# 26 "../../libgimpmath/gimpmathtypes.h"
typedef struct _GimpMatrix2 GimpMatrix2;
typedef struct _GimpMatrix3 GimpMatrix3;
typedef struct _GimpMatrix4 GimpMatrix4;







struct _GimpMatrix2
{
  gdouble coeff[2][2];
};







struct _GimpMatrix3
{
  gdouble coeff[3][3];
};







struct _GimpMatrix4
{
  gdouble coeff[4][4];
};


typedef struct _GimpVector2 GimpVector2;
typedef struct _GimpVector3 GimpVector3;
typedef struct _GimpVector4 GimpVector4;
# 75 "../../libgimpmath/gimpmathtypes.h"
struct _GimpVector2
{
  gdouble x, y;
};
# 88 "../../libgimpmath/gimpmathtypes.h"
struct _GimpVector3
{
  gdouble x, y, z;
};
# 102 "../../libgimpmath/gimpmathtypes.h"
struct _GimpVector4
{
  gdouble x, y, z, w;
};
# 38 "../../libgimpmath/gimpmath.h" 2

# 1 "../../libgimpmath/gimpmatrix.h" 1
# 41 "../../libgimpmath/gimpmatrix.h"
GType gimp_matrix2_get_type (void) __attribute__((__const__));





GType gimp_param_matrix2_get_type (void) __attribute__((__const__));

GParamSpec * gimp_param_spec_matrix2 (const gchar *name,
                                            const gchar *nick,
                                            const gchar *blurb,
                                            const GimpMatrix2 *default_value,
                                            GParamFlags flags);


void gimp_matrix2_identity (GimpMatrix2 *matrix);
void gimp_matrix2_mult (const GimpMatrix2 *matrix1,
                                            GimpMatrix2 *matrix2);
# 68 "../../libgimpmath/gimpmatrix.h"
GType gimp_matrix3_get_type (void) __attribute__((__const__));





GType gimp_param_matrix3_get_type (void) __attribute__((__const__));

GParamSpec * gimp_param_spec_matrix3 (const gchar *name,
                                            const gchar *nick,
                                            const gchar *blurb,
                                            const GimpMatrix3 *default_value,
                                            GParamFlags flags);


void gimp_matrix3_identity (GimpMatrix3 *matrix);
void gimp_matrix3_mult (const GimpMatrix3 *matrix1,
                                            GimpMatrix3 *matrix2);
void gimp_matrix3_translate (GimpMatrix3 *matrix,
                                            gdouble x,
                                            gdouble y);
void gimp_matrix3_scale (GimpMatrix3 *matrix,
                                            gdouble x,
                                            gdouble y);
void gimp_matrix3_rotate (GimpMatrix3 *matrix,
                                            gdouble theta);
void gimp_matrix3_xshear (GimpMatrix3 *matrix,
                                            gdouble amount);
void gimp_matrix3_yshear (GimpMatrix3 *matrix,
                                            gdouble amount);
void gimp_matrix3_affine (GimpMatrix3 *matrix,
                                            gdouble a,
                                            gdouble b,
                                            gdouble c,
                                            gdouble d,
                                            gdouble e,
                                            gdouble f);

gdouble gimp_matrix3_determinant (const GimpMatrix3 *matrix);
void gimp_matrix3_invert (GimpMatrix3 *matrix);

gboolean gimp_matrix3_is_identity (const GimpMatrix3 *matrix);
gboolean gimp_matrix3_is_diagonal (const GimpMatrix3 *matrix);
gboolean gimp_matrix3_is_affine (const GimpMatrix3 *matrix);
gboolean gimp_matrix3_is_simple (const GimpMatrix3 *matrix);

void gimp_matrix3_transform_point (const GimpMatrix3 *matrix,
                                            gdouble x,
                                            gdouble y,
                                            gdouble *newx,
                                            gdouble *newy);






void gimp_matrix4_to_deg (const GimpMatrix4 *matrix,
                                            gdouble *a,
                                            gdouble *b,
                                            gdouble *c);
# 40 "../../libgimpmath/gimpmath.h" 2
# 1 "../../libgimpmath/gimpmd5.h" 1
# 41 "../../libgimpmath/gimpmath.h" 2
# 1 "../../libgimpmath/gimpvector.h" 1
# 40 "../../libgimpmath/gimpvector.h"
GimpVector2 gimp_vector2_new (gdouble x,
                                            gdouble y);
void gimp_vector2_set (GimpVector2 *vector,
                                            gdouble x,
                                            gdouble y);
gdouble gimp_vector2_length (const GimpVector2 *vector);
gdouble gimp_vector2_length_val (GimpVector2 vector);
void gimp_vector2_mul (GimpVector2 *vector,
                                            gdouble factor);
GimpVector2 gimp_vector2_mul_val (GimpVector2 vector,
                                            gdouble factor);
void gimp_vector2_normalize (GimpVector2 *vector);
GimpVector2 gimp_vector2_normalize_val (GimpVector2 vector);
void gimp_vector2_neg (GimpVector2 *vector);
GimpVector2 gimp_vector2_neg_val (GimpVector2 vector);
void gimp_vector2_add (GimpVector2 *result,
                                            const GimpVector2 *vector1,
                                            const GimpVector2 *vector2);
GimpVector2 gimp_vector2_add_val (GimpVector2 vector1,
                                            GimpVector2 vector2);
void gimp_vector2_sub (GimpVector2 *result,
                                            const GimpVector2 *vector1,
                                            const GimpVector2 *vector2);
GimpVector2 gimp_vector2_sub_val (GimpVector2 vector1,
                                            GimpVector2 vector2);
gdouble gimp_vector2_inner_product (const GimpVector2 *vector1,
                                            const GimpVector2 *vector2);
gdouble gimp_vector2_inner_product_val (GimpVector2 vector1,
                                            GimpVector2 vector2);
GimpVector2 gimp_vector2_cross_product (const GimpVector2 *vector1,
                                            const GimpVector2 *vector2);
GimpVector2 gimp_vector2_cross_product_val (GimpVector2 vector1,
                                            GimpVector2 vector2);
void gimp_vector2_rotate (GimpVector2 *vector,
                                            gdouble alpha);
GimpVector2 gimp_vector2_rotate_val (GimpVector2 vector,
                                            gdouble alpha);
GimpVector2 gimp_vector2_normal (GimpVector2 *vector);
GimpVector2 gimp_vector2_normal_val (GimpVector2 vector);




GimpVector3 gimp_vector3_new (gdouble x,
                                            gdouble y,
                                            gdouble z);
void gimp_vector3_set (GimpVector3 *vector,
                                            gdouble x,
                                            gdouble y,
                                            gdouble z);
gdouble gimp_vector3_length (const GimpVector3 *vector);
gdouble gimp_vector3_length_val (GimpVector3 vector);
void gimp_vector3_mul (GimpVector3 *vector,
                                            gdouble factor);
GimpVector3 gimp_vector3_mul_val (GimpVector3 vector,
                                            gdouble factor);
void gimp_vector3_normalize (GimpVector3 *vector);
GimpVector3 gimp_vector3_normalize_val (GimpVector3 vector);
void gimp_vector3_neg (GimpVector3 *vector);
GimpVector3 gimp_vector3_neg_val (GimpVector3 vector);
void gimp_vector3_add (GimpVector3 *result,
                                            const GimpVector3 *vector1,
                                            const GimpVector3 *vector2);
GimpVector3 gimp_vector3_add_val (GimpVector3 vector1,
                                            GimpVector3 vector2);
void gimp_vector3_sub (GimpVector3 *result,
                                            const GimpVector3 *vector1,
                                            const GimpVector3 *vector2);
GimpVector3 gimp_vector3_sub_val (GimpVector3 vector1,
                                            GimpVector3 vector2);
gdouble gimp_vector3_inner_product (const GimpVector3 *vector1,
                                            const GimpVector3 *vector2);
gdouble gimp_vector3_inner_product_val (GimpVector3 vector1,
                                            GimpVector3 vector2);
GimpVector3 gimp_vector3_cross_product (const GimpVector3 *vector1,
                                            const GimpVector3 *vector2);
GimpVector3 gimp_vector3_cross_product_val (GimpVector3 vector1,
                                            GimpVector3 vector2);
void gimp_vector3_rotate (GimpVector3 *vector,
                                            gdouble alpha,
                                            gdouble beta,
                                            gdouble gamma);
GimpVector3 gimp_vector3_rotate_val (GimpVector3 vector,
                                            gdouble alpha,
                                            gdouble beta,
                                            gdouble gamma);




void gimp_vector_2d_to_3d (gint sx,
                                            gint sy,
                                            gint w,
                                            gint h,
                                            gint x,
                                            gint y,
                                            const GimpVector3 *vp,
                                            GimpVector3 *p);

GimpVector3 gimp_vector_2d_to_3d_val (gint sx,
                                            gint sy,
                                            gint w,
                                            gint h,
                                            gint x,
                                            gint y,
                                            GimpVector3 vp,
                                            GimpVector3 p);

void gimp_vector_3d_to_2d (gint sx,
                                            gint sy,
                                            gint w,
                                            gint h,
                                            gdouble *x,
                                            gdouble *y,
                                            const GimpVector3 *vp,
                                            const GimpVector3 *p);
# 42 "../../libgimpmath/gimpmath.h" 2
# 28 "gimprc-deserialize.c" 2
# 1 "../../libgimpconfig/gimpconfig.h" 1
# 24 "../../libgimpconfig/gimpconfig.h"
# 1 "../../libgimpconfig/gimpconfigtypes.h" 1
# 26 "../../libgimpconfig/gimpconfigtypes.h"
# 1 "../../libgimpbase/gimpbasetypes.h" 1
# 26 "../../libgimpbase/gimpbasetypes.h"
# 1 "../../libgimpbase/gimpbaseenums.h" 1
# 39 "../../libgimpbase/gimpbaseenums.h"
GType gimp_add_mask_type_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_ADD_WHITE_MASK,
  GIMP_ADD_BLACK_MASK,
  GIMP_ADD_ALPHA_MASK,
  GIMP_ADD_ALPHA_TRANSFER_MASK,
  GIMP_ADD_SELECTION_MASK,
  GIMP_ADD_COPY_MASK,
  GIMP_ADD_CHANNEL_MASK
} GimpAddMaskType;




GType gimp_blend_mode_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_FG_BG_RGB_MODE,
  GIMP_FG_BG_HSV_MODE,
  GIMP_FG_TRANSPARENT_MODE,
  GIMP_CUSTOM_MODE
} GimpBlendMode;




GType gimp_bucket_fill_mode_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_FG_BUCKET_FILL,
  GIMP_BG_BUCKET_FILL,
  GIMP_PATTERN_BUCKET_FILL
} GimpBucketFillMode;




GType gimp_channel_ops_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_CHANNEL_OP_ADD,
  GIMP_CHANNEL_OP_SUBTRACT,
  GIMP_CHANNEL_OP_REPLACE,
  GIMP_CHANNEL_OP_INTERSECT
} GimpChannelOps;




GType gimp_channel_type_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_RED_CHANNEL,
  GIMP_GREEN_CHANNEL,
  GIMP_BLUE_CHANNEL,
  GIMP_GRAY_CHANNEL,
  GIMP_INDEXED_CHANNEL,
  GIMP_ALPHA_CHANNEL
} GimpChannelType;




GType gimp_check_size_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_CHECK_SIZE_SMALL_CHECKS = 0,
  GIMP_CHECK_SIZE_MEDIUM_CHECKS = 1,
  GIMP_CHECK_SIZE_LARGE_CHECKS = 2
} GimpCheckSize;




GType gimp_check_type_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_CHECK_TYPE_LIGHT_CHECKS = 0,
  GIMP_CHECK_TYPE_GRAY_CHECKS = 1,
  GIMP_CHECK_TYPE_DARK_CHECKS = 2,
  GIMP_CHECK_TYPE_WHITE_ONLY = 3,
  GIMP_CHECK_TYPE_GRAY_ONLY = 4,
  GIMP_CHECK_TYPE_BLACK_ONLY = 5
} GimpCheckType;




GType gimp_clone_type_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_IMAGE_CLONE,
  GIMP_PATTERN_CLONE
} GimpCloneType;




GType gimp_desaturate_mode_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_DESATURATE_LIGHTNESS,
  GIMP_DESATURATE_LUMINOSITY,
  GIMP_DESATURATE_AVERAGE
} GimpDesaturateMode;




GType gimp_dodge_burn_type_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_DODGE,
  GIMP_BURN
} GimpDodgeBurnType;




GType gimp_foreground_extract_mode_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_FOREGROUND_EXTRACT_SIOX
} GimpForegroundExtractMode;




GType gimp_gradient_type_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_GRADIENT_LINEAR,
  GIMP_GRADIENT_BILINEAR,
  GIMP_GRADIENT_RADIAL,
  GIMP_GRADIENT_SQUARE,
  GIMP_GRADIENT_CONICAL_SYMMETRIC,
  GIMP_GRADIENT_CONICAL_ASYMMETRIC,
  GIMP_GRADIENT_SHAPEBURST_ANGULAR,
  GIMP_GRADIENT_SHAPEBURST_SPHERICAL,
  GIMP_GRADIENT_SHAPEBURST_DIMPLED,
  GIMP_GRADIENT_SPIRAL_CLOCKWISE,
  GIMP_GRADIENT_SPIRAL_ANTICLOCKWISE
} GimpGradientType;




GType gimp_grid_style_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_GRID_DOTS,
  GIMP_GRID_INTERSECTIONS,
  GIMP_GRID_ON_OFF_DASH,
  GIMP_GRID_DOUBLE_DASH,
  GIMP_GRID_SOLID
} GimpGridStyle;




GType gimp_icon_type_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_ICON_TYPE_STOCK_ID,
  GIMP_ICON_TYPE_INLINE_PIXBUF,
  GIMP_ICON_TYPE_IMAGE_FILE
} GimpIconType;




GType gimp_image_base_type_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_RGB,
  GIMP_GRAY,
  GIMP_INDEXED
} GimpImageBaseType;




GType gimp_image_type_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_RGB_IMAGE,
  GIMP_RGBA_IMAGE,
  GIMP_GRAY_IMAGE,
  GIMP_GRAYA_IMAGE,
  GIMP_INDEXED_IMAGE,
  GIMP_INDEXEDA_IMAGE
} GimpImageType;




GType gimp_interpolation_type_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_INTERPOLATION_NONE,
  GIMP_INTERPOLATION_LINEAR,
  GIMP_INTERPOLATION_CUBIC,
  GIMP_INTERPOLATION_LANCZOS
} GimpInterpolationType;




GType gimp_paint_application_mode_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_PAINT_CONSTANT,
  GIMP_PAINT_INCREMENTAL
} GimpPaintApplicationMode;




GType gimp_repeat_mode_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_REPEAT_NONE,
  GIMP_REPEAT_SAWTOOTH,
  GIMP_REPEAT_TRIANGULAR
} GimpRepeatMode;




GType gimp_run_mode_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_RUN_INTERACTIVE,
  GIMP_RUN_NONINTERACTIVE,
  GIMP_RUN_WITH_LAST_VALS
} GimpRunMode;




GType gimp_size_type_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_PIXELS,
  GIMP_POINTS
} GimpSizeType;




GType gimp_transfer_mode_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_SHADOWS,
  GIMP_MIDTONES,
  GIMP_HIGHLIGHTS
} GimpTransferMode;




GType gimp_transform_direction_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_TRANSFORM_FORWARD,
  GIMP_TRANSFORM_BACKWARD
} GimpTransformDirection;




GType gimp_transform_resize_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_TRANSFORM_RESIZE_ADJUST = 0,
  GIMP_TRANSFORM_RESIZE_CLIP = 1,
  GIMP_TRANSFORM_RESIZE_CROP,
  GIMP_TRANSFORM_RESIZE_CROP_WITH_ASPECT
} GimpTransformResize;


typedef enum
{
  GIMP_UNIT_PIXEL = 0,

  GIMP_UNIT_INCH = 1,
  GIMP_UNIT_MM = 2,
  GIMP_UNIT_POINT = 3,
  GIMP_UNIT_PICA = 4,

  GIMP_UNIT_END = 5,

  GIMP_UNIT_PERCENT = 65536
} GimpUnit;




GType gimp_pdb_arg_type_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_PDB_INT32,
  GIMP_PDB_INT16,
  GIMP_PDB_INT8,
  GIMP_PDB_FLOAT,
  GIMP_PDB_STRING,
  GIMP_PDB_INT32ARRAY,
  GIMP_PDB_INT16ARRAY,
  GIMP_PDB_INT8ARRAY,
  GIMP_PDB_FLOATARRAY,
  GIMP_PDB_STRINGARRAY,
  GIMP_PDB_COLOR,
  GIMP_PDB_ITEM,
  GIMP_PDB_DISPLAY,
  GIMP_PDB_IMAGE,
  GIMP_PDB_LAYER,
  GIMP_PDB_CHANNEL,
  GIMP_PDB_DRAWABLE,
  GIMP_PDB_SELECTION,
  GIMP_PDB_COLORARRAY,
  GIMP_PDB_VECTORS,
  GIMP_PDB_PARASITE,
  GIMP_PDB_STATUS,
  GIMP_PDB_END,


  GIMP_PDB_PATH = GIMP_PDB_VECTORS,
  GIMP_PDB_BOUNDARY = GIMP_PDB_COLORARRAY,
  GIMP_PDB_REGION = GIMP_PDB_ITEM
} GimpPDBArgType;




GType gimp_pdb_error_handler_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_PDB_ERROR_HANDLER_INTERNAL,
  GIMP_PDB_ERROR_HANDLER_PLUGIN
} GimpPDBErrorHandler;




GType gimp_pdb_proc_type_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_INTERNAL,
  GIMP_PLUGIN,
  GIMP_EXTENSION,
  GIMP_TEMPORARY
} GimpPDBProcType;




GType gimp_pdb_status_type_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_PDB_EXECUTION_ERROR,
  GIMP_PDB_CALLING_ERROR,
  GIMP_PDB_PASS_THROUGH,
  GIMP_PDB_SUCCESS,
  GIMP_PDB_CANCEL
} GimpPDBStatusType;




GType gimp_message_handler_type_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_MESSAGE_BOX,
  GIMP_CONSOLE,
  GIMP_ERROR_CONSOLE
} GimpMessageHandlerType;




GType gimp_stack_trace_mode_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_STACK_TRACE_NEVER,
  GIMP_STACK_TRACE_QUERY,
  GIMP_STACK_TRACE_ALWAYS
} GimpStackTraceMode;




GType gimp_progress_command_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_PROGRESS_COMMAND_START,
  GIMP_PROGRESS_COMMAND_END,
  GIMP_PROGRESS_COMMAND_SET_TEXT,
  GIMP_PROGRESS_COMMAND_SET_VALUE,
  GIMP_PROGRESS_COMMAND_PULSE,
  GIMP_PROGRESS_COMMAND_GET_WINDOW
} GimpProgressCommand;




GType gimp_text_direction_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_TEXT_DIRECTION_LTR,
  GIMP_TEXT_DIRECTION_RTL
} GimpTextDirection;




GType gimp_text_hint_style_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_TEXT_HINT_STYLE_NONE,
  GIMP_TEXT_HINT_STYLE_SLIGHT,
  GIMP_TEXT_HINT_STYLE_MEDIUM,
  GIMP_TEXT_HINT_STYLE_FULL
} GimpTextHintStyle;




GType gimp_text_justification_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_TEXT_JUSTIFY_LEFT,
  GIMP_TEXT_JUSTIFY_RIGHT,
  GIMP_TEXT_JUSTIFY_CENTER,
  GIMP_TEXT_JUSTIFY_FILL
} GimpTextJustification;
# 532 "../../libgimpbase/gimpbaseenums.h"
GType gimp_vectors_stroke_type_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_VECTORS_STROKE_TYPE_BEZIER
} GimpVectorsStrokeType;
# 27 "../../libgimpbase/gimpbasetypes.h" 2
# 1 "../../libgimpbase/gimpparam.h" 1
# 28 "../../libgimpbase/gimpbasetypes.h" 2







typedef struct _GimpParasite GimpParasite;
typedef struct _GimpDatafileData GimpDatafileData;
typedef struct _GimpEnumDesc GimpEnumDesc;
typedef struct _GimpFlagsDesc GimpFlagsDesc;


typedef void (* GimpDatafileLoaderFunc) (const GimpDatafileData *file_data,
                                         gpointer user_data);
# 54 "../../libgimpbase/gimpbasetypes.h"
struct _GimpEnumDesc
{
  gint value;
  const gchar *value_desc;
  const gchar *value_help;
};
# 70 "../../libgimpbase/gimpbasetypes.h"
struct _GimpFlagsDesc
{
  guint value;
  const gchar *value_desc;
  const gchar *value_help;
};


void gimp_type_set_translation_domain (GType type,
                                                         const gchar *domain);
const gchar * gimp_type_get_translation_domain (GType type);

void gimp_type_set_translation_context (GType type,
                                                         const gchar *context);
const gchar * gimp_type_get_translation_context (GType type);

void gimp_enum_set_value_descriptions (GType enum_type,
                                                         const GimpEnumDesc *descriptions);
const GimpEnumDesc * gimp_enum_get_value_descriptions (GType enum_type);

void gimp_flags_set_value_descriptions (GType flags_type,
                                                         const GimpFlagsDesc *descriptions);
const GimpFlagsDesc * gimp_flags_get_value_descriptions (GType flags_type);
# 27 "../../libgimpconfig/gimpconfigtypes.h" 2


typedef struct _GimpConfig GimpConfig;
typedef struct _GimpConfigWriter GimpConfigWriter;
typedef gchar * GimpConfigPath;



# 1 "../../libgimpconfig/gimpcolorconfig-enums.h" 1
# 28 "../../libgimpconfig/gimpcolorconfig-enums.h"
GType gimp_color_management_mode_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_COLOR_MANAGEMENT_OFF,
  GIMP_COLOR_MANAGEMENT_DISPLAY,
  GIMP_COLOR_MANAGEMENT_SOFTPROOF
} GimpColorManagementMode;





GType gimp_color_rendering_intent_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_COLOR_RENDERING_INTENT_PERCEPTUAL,
  GIMP_COLOR_RENDERING_INTENT_RELATIVE_COLORIMETRIC,
  GIMP_COLOR_RENDERING_INTENT_SATURATION,
  GIMP_COLOR_RENDERING_INTENT_ABSOLUTE_COLORIMETRIC
} GimpColorRenderingIntent;
# 35 "../../libgimpconfig/gimpconfigtypes.h" 2

typedef struct _GimpColorConfig GimpColorConfig;
# 25 "../../libgimpconfig/gimpconfig.h" 2

# 1 "../../libgimpconfig/gimpconfigwriter.h" 1
# 30 "../../libgimpconfig/gimpconfigwriter.h"
GimpConfigWriter * gimp_config_writer_new_file (const gchar *filename,
                                                    gboolean atomic,
                                                    const gchar *header,
                                                    GError **error);
GimpConfigWriter * gimp_config_writer_new_fd (gint fd);
GimpConfigWriter * gimp_config_writer_new_string (GString *string);

void gimp_config_writer_open (GimpConfigWriter *writer,
                                                    const gchar *name);
void gimp_config_writer_comment_mode (GimpConfigWriter *writer,
                                                    gboolean enable);

void gimp_config_writer_print (GimpConfigWriter *writer,
                                                    const gchar *string,
                                                    gint len);
void gimp_config_writer_printf (GimpConfigWriter *writer,
                                                    const gchar *format,
                                                    ...) __attribute__((__format__ (__printf__, 2, 3)));
void gimp_config_writer_identifier (GimpConfigWriter *writer,
                                                    const gchar *identifier);
void gimp_config_writer_string (GimpConfigWriter *writer,
                                                    const gchar *string);
void gimp_config_writer_data (GimpConfigWriter *writer,
                                                    gint length,
                                                    const guint8 *data);
void gimp_config_writer_comment (GimpConfigWriter *writer,
                                                    const gchar *comment);
void gimp_config_writer_linefeed (GimpConfigWriter *writer);


void gimp_config_writer_revert (GimpConfigWriter *writer);
void gimp_config_writer_close (GimpConfigWriter *writer);
gboolean gimp_config_writer_finish (GimpConfigWriter *writer,
                                                    const gchar *footer,
                                                    GError **error);
# 27 "../../libgimpconfig/gimpconfig.h" 2
# 1 "../../libgimpconfig/gimpconfig-iface.h" 1
# 40 "../../libgimpconfig/gimpconfig-iface.h"
typedef struct _GimpConfigInterface GimpConfigInterface;

struct _GimpConfigInterface
{
  GTypeInterface base_iface;

  gboolean (* serialize) (GimpConfig *config,
                                         GimpConfigWriter *writer,
                                         gpointer data);
  gboolean (* deserialize) (GimpConfig *config,
                                         GScanner *scanner,
                                         gint nest_level,
                                         gpointer data);
  gboolean (* serialize_property) (GimpConfig *config,
                                         guint property_id,
                                         const GValue *value,
                                         GParamSpec *pspec,
                                         GimpConfigWriter *writer);
  gboolean (* deserialize_property) (GimpConfig *config,
                                         guint property_id,
                                         GValue *value,
                                         GParamSpec *pspec,
                                         GScanner *scanner,
                                         GTokenType *expected);
  GimpConfig * (* duplicate) (GimpConfig *config);
  gboolean (* equal) (GimpConfig *a,
                                         GimpConfig *b);
  void (* reset) (GimpConfig *config);
  gboolean (* copy) (GimpConfig *src,
                                         GimpConfig *dest,
                                         GParamFlags flags);
};


GType gimp_config_interface_get_type (void) __attribute__((__const__));

gboolean gimp_config_serialize_to_file (GimpConfig *config,
                                                 const gchar *filename,
                                                 const gchar *header,
                                                 const gchar *footer,
                                                 gpointer data,
                                                 GError **error);
gboolean gimp_config_serialize_to_fd (GimpConfig *config,
                                                 gint fd,
                                                 gpointer data);
gchar * gimp_config_serialize_to_string (GimpConfig *config,
                                                 gpointer data);
gboolean gimp_config_deserialize_file (GimpConfig *config,
                                                 const gchar *filename,
                                                 gpointer data,
                                                 GError **error);
gboolean gimp_config_deserialize_string (GimpConfig *config,
                                                 const gchar *text,
                                                 gint text_len,
                                                 gpointer data,
                                                 GError **error);
gboolean gimp_config_deserialize_return (GScanner *scanner,
                                                 GTokenType expected_token,
                                                 gint nest_level);

gboolean gimp_config_serialize (GimpConfig *config,
                                                 GimpConfigWriter *writer,
                                                 gpointer data);
gboolean gimp_config_deserialize (GimpConfig *config,
                                                 GScanner *scanner,
                                                 gint nest_level,
                                                 gpointer data);
gpointer gimp_config_duplicate (GimpConfig *config);
gboolean gimp_config_is_equal_to (GimpConfig *a,
                                                 GimpConfig *b);
void gimp_config_reset (GimpConfig *config);
gboolean gimp_config_copy (GimpConfig *src,
                                                 GimpConfig *dest,
                                                 GParamFlags flags);
# 28 "../../libgimpconfig/gimpconfig.h" 2
# 1 "../../libgimpconfig/gimpconfig-error.h" 1
# 43 "../../libgimpconfig/gimpconfig-error.h"
typedef enum
{
  GIMP_CONFIG_ERROR_OPEN,
  GIMP_CONFIG_ERROR_OPEN_ENOENT,
  GIMP_CONFIG_ERROR_WRITE,
  GIMP_CONFIG_ERROR_PARSE,
  GIMP_CONFIG_ERROR_VERSION
} GimpConfigError;



GQuark gimp_config_error_quark (void) __attribute__((__const__));
# 29 "../../libgimpconfig/gimpconfig.h" 2
# 1 "../../libgimpconfig/gimpconfig-serialize.h" 1
# 34 "../../libgimpconfig/gimpconfig-serialize.h"
gboolean gimp_config_serialize_properties (GimpConfig *config,
                                                    GimpConfigWriter *writer);
gboolean gimp_config_serialize_changed_properties (GimpConfig *config,
                                                    GimpConfigWriter *writer);

gboolean gimp_config_serialize_property (GimpConfig *config,
                                                    GParamSpec *param_spec,
                                                    GimpConfigWriter *writer);
gboolean gimp_config_serialize_property_by_name (GimpConfig *config,
                                                    const gchar *prop_name,
                                                    GimpConfigWriter *writer);
gboolean gimp_config_serialize_value (const GValue *value,
                                                    GString *str,
                                                    gboolean escaped);
# 30 "../../libgimpconfig/gimpconfig.h" 2
# 1 "../../libgimpconfig/gimpconfig-deserialize.h" 1
# 34 "../../libgimpconfig/gimpconfig-deserialize.h"
gboolean gimp_config_deserialize_properties (GimpConfig *config,
                                                GScanner *scanner,
                                                gint nest_level);
GTokenType gimp_config_deserialize_property (GimpConfig *config,
                                                GScanner *scanner,
                                                gint nest_level);
# 31 "../../libgimpconfig/gimpconfig.h" 2
# 1 "../../libgimpconfig/gimpconfig-utils.h" 1
# 34 "../../libgimpconfig/gimpconfig-utils.h"
GList * gimp_config_diff (GObject *a,
                                              GObject *b,
                                              GParamFlags flags);

gboolean gimp_config_sync (GObject *src,
                                              GObject *dest,
                                              GParamFlags flags);

void gimp_config_reset_properties (GObject *object);
void gimp_config_reset_property (GObject *object,
                                              const gchar *property_name);

void gimp_config_string_append_escaped (GString *string,
                                              const gchar *val);
# 32 "../../libgimpconfig/gimpconfig.h" 2
# 1 "../../libgimpconfig/gimpconfig-params.h" 1
# 33 "../../libgimpconfig/gimpconfig.h" 2
# 1 "../../libgimpconfig/gimpconfig-path.h" 1
# 41 "../../libgimpconfig/gimpconfig-path.h"
GType gimp_config_path_get_type (void) __attribute__((__const__));







typedef enum
{
  GIMP_CONFIG_PATH_FILE,
  GIMP_CONFIG_PATH_FILE_LIST,
  GIMP_CONFIG_PATH_DIR,
  GIMP_CONFIG_PATH_DIR_LIST
} GimpConfigPathType;





GType gimp_param_config_path_get_type (void) __attribute__((__const__));

GParamSpec * gimp_param_spec_config_path (const gchar *name,
                                                      const gchar *nick,
                                                      const gchar *blurb,
                                                      GimpConfigPathType type,
                                                      const gchar *default_value,
                                                      GParamFlags flags);

GimpConfigPathType gimp_param_spec_config_path_type (GParamSpec *pspec);






gchar * gimp_config_path_expand (const gchar *path,
                                                      gboolean recode,
                                                      GError **error) __attribute__((__malloc__));

gchar * gimp_config_build_data_path (const gchar *name) __attribute__((__malloc__));
gchar * gimp_config_build_writable_path (const gchar *name) __attribute__((__malloc__));
gchar * gimp_config_build_plug_in_path (const gchar *name) __attribute__((__malloc__));
# 34 "../../libgimpconfig/gimpconfig.h" 2
# 1 "../../libgimpconfig/gimpscanner.h" 1
# 31 "../../libgimpconfig/gimpscanner.h"
GScanner * gimp_scanner_new_file (const gchar *filename,
                                                  GError **error);
GScanner * gimp_scanner_new_string (const gchar *text,
                                                  gint text_len,
                                                  GError **error);
void gimp_scanner_destroy (GScanner *scanner);

gboolean gimp_scanner_parse_token (GScanner *scanner,
                                                  GTokenType token);
gboolean gimp_scanner_parse_identifier (GScanner *scanner,
                                                  const gchar *identifier);
gboolean gimp_scanner_parse_string (GScanner *scanner,
                                                  gchar **dest);
gboolean gimp_scanner_parse_string_no_validate (GScanner *scanner,
                                                  gchar **dest);
gboolean gimp_scanner_parse_data (GScanner *scanner,
                                                  gint length,
                                                  guint8 **dest);
gboolean gimp_scanner_parse_int (GScanner *scanner,
                                                  gint *dest);
gboolean gimp_scanner_parse_float (GScanner *scanner,
                                                  gdouble *dest);
gboolean gimp_scanner_parse_boolean (GScanner *scanner,
                                                  gboolean *dest);
gboolean gimp_scanner_parse_color (GScanner *scanner,
                                                  GimpRGB *dest);
gboolean gimp_scanner_parse_matrix2 (GScanner *scanner,
                                                  GimpMatrix2 *dest);
# 35 "../../libgimpconfig/gimpconfig.h" 2

# 1 "../../libgimpconfig/gimpcolorconfig.h" 1
# 37 "../../libgimpconfig/gimpcolorconfig.h"
typedef struct _GimpColorConfigClass GimpColorConfigClass;

struct _GimpColorConfig
{
  GObject parent_instance;


  GimpColorManagementMode mode;
  gchar *rgb_profile;
  gchar *cmyk_profile;
  gchar *display_profile;
  gboolean display_profile_from_gdk;
  gchar *printer_profile;
  GimpColorRenderingIntent display_intent;
  GimpColorRenderingIntent simulation_intent;

  gchar *display_module;

  gboolean simulation_gamut_check;
  GimpRGB out_of_gamut_color;



  void (* _gimp_reserved1) (void);
  void (* _gimp_reserved2) (void);
  void (* _gimp_reserved3) (void);
  void (* _gimp_reserved4) (void);
  void (* _gimp_reserved5) (void);
  void (* _gimp_reserved6) (void);
  void (* _gimp_reserved7) (void);
  void (* _gimp_reserved8) (void);
};

struct _GimpColorConfigClass
{
  GObjectClass parent_class;
};


GType gimp_color_config_get_type (void) __attribute__((__const__));
# 37 "../../libgimpconfig/gimpconfig.h" 2
# 29 "gimprc-deserialize.c" 2

# 1 "./config-types.h" 1
# 27 "./config-types.h"
# 1 "../../app/config/config-enums.h" 1
# 24 "../../app/config/config-enums.h"
GType gimp_cursor_mode_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_CURSOR_MODE_TOOL_ICON,
  GIMP_CURSOR_MODE_TOOL_CROSSHAIR,
  GIMP_CURSOR_MODE_CROSSHAIR
} GimpCursorMode;




GType gimp_canvas_padding_mode_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_CANVAS_PADDING_MODE_DEFAULT,
  GIMP_CANVAS_PADDING_MODE_LIGHT_CHECK,
  GIMP_CANVAS_PADDING_MODE_DARK_CHECK,
  GIMP_CANVAS_PADDING_MODE_CUSTOM,
  GIMP_CANVAS_PADDING_MODE_RESET = -1
} GimpCanvasPaddingMode;




GType gimp_space_bar_action_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_SPACE_BAR_ACTION_NONE,
  GIMP_SPACE_BAR_ACTION_PAN,
  GIMP_SPACE_BAR_ACTION_MOVE
} GimpSpaceBarAction;




GType gimp_zoom_quality_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_ZOOM_QUALITY_LOW,
  GIMP_ZOOM_QUALITY_HIGH
} GimpZoomQuality;




GType gimp_help_browser_type_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_HELP_BROWSER_GIMP,
  GIMP_HELP_BROWSER_WEB_BROWSER
} GimpHelpBrowserType;




GType gimp_window_hint_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_WINDOW_HINT_NORMAL,
  GIMP_WINDOW_HINT_UTILITY,
  GIMP_WINDOW_HINT_KEEP_ABOVE
} GimpWindowHint;




GType gimp_cursor_format_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_CURSOR_FORMAT_BITMAP,
  GIMP_CURSOR_FORMAT_PIXBUF
} GimpCursorFormat;




GType gimp_handedness_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_HANDEDNESS_LEFT,
  GIMP_HANDEDNESS_RIGHT
} GimpHandedness;
# 28 "./config-types.h" 2






typedef struct _GimpBaseConfig GimpBaseConfig;
typedef struct _GimpCoreConfig GimpCoreConfig;
typedef struct _GimpDisplayConfig GimpDisplayConfig;
typedef struct _GimpGuiConfig GimpGuiConfig;
typedef struct _GimpPluginConfig GimpPluginConfig;
typedef struct _GimpRc GimpRc;

typedef struct _GimpXmlParser GimpXmlParser;

typedef struct _GimpDisplayOptions GimpDisplayOptions;


typedef struct _GimpGrid GimpGrid;
typedef struct _GimpTemplate GimpTemplate;
# 31 "gimprc-deserialize.c" 2

# 1 "./gimprc-deserialize.h" 1
# 25 "./gimprc-deserialize.h"
gboolean gimp_rc_deserialize (GimpConfig *config,
                               GScanner *scanner,
                               gint nest_level,
                               gpointer data);
# 33 "gimprc-deserialize.c" 2
# 1 "./gimprc-unknown.h" 1
# 25 "./gimprc-unknown.h"
typedef void (* GimpConfigForeachFunc) (const gchar *key,
                                         const gchar *value,
                                         gpointer user_data);


void gimp_rc_add_unknown_token (GimpConfig *config,
                                             const gchar *key,
                                             const gchar *value);
const gchar * gimp_rc_lookup_unknown_token (GimpConfig *config,
                                             const gchar *key);
void gimp_rc_foreach_unknown_token (GimpConfig *config,
                                             GimpConfigForeachFunc func,
                                             gpointer user_data);
# 34 "gimprc-deserialize.c" 2

# 1 "../../app/gimp-intl.h" 1
# 25 "../../app/gimp-intl.h"
# 1 "/usr/include/glib-2.0/glib/gi18n.h" 1
# 23 "/usr/include/glib-2.0/glib/gi18n.h"
# 1 "/usr/include/libintl.h" 1 3 4
# 39 "/usr/include/libintl.h" 3 4
extern char *gettext (const char *__msgid)
     __attribute__ ((__nothrow__ )) __attribute__ ((__format_arg__ (1)));



extern char *dgettext (const char *__domainname, const char *__msgid)
     __attribute__ ((__nothrow__ )) __attribute__ ((__format_arg__ (2)));
extern char *__dgettext (const char *__domainname, const char *__msgid)
     __attribute__ ((__nothrow__ )) __attribute__ ((__format_arg__ (2)));



extern char *dcgettext (const char *__domainname,
   const char *__msgid, int __category)
     __attribute__ ((__nothrow__ )) __attribute__ ((__format_arg__ (2)));
extern char *__dcgettext (const char *__domainname,
     const char *__msgid, int __category)
     __attribute__ ((__nothrow__ )) __attribute__ ((__format_arg__ (2)));




extern char *ngettext (const char *__msgid1, const char *__msgid2,
         unsigned long int __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__format_arg__ (1))) __attribute__ ((__format_arg__ (2)));



extern char *dngettext (const char *__domainname, const char *__msgid1,
   const char *__msgid2, unsigned long int __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__format_arg__ (2))) __attribute__ ((__format_arg__ (3)));



extern char *dcngettext (const char *__domainname, const char *__msgid1,
    const char *__msgid2, unsigned long int __n,
    int __category)
     __attribute__ ((__nothrow__ )) __attribute__ ((__format_arg__ (2))) __attribute__ ((__format_arg__ (3)));





extern char *textdomain (const char *__domainname) __attribute__ ((__nothrow__ ));



extern char *bindtextdomain (const char *__domainname,
        const char *__dirname) __attribute__ ((__nothrow__ ));



extern char *bind_textdomain_codeset (const char *__domainname,
          const char *__codeset) __attribute__ ((__nothrow__ ));
# 24 "/usr/include/glib-2.0/glib/gi18n.h" 2
# 1 "/usr/include/string.h" 1 3 4
# 32 "/usr/include/string.h" 3 4
# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 1 3 4
# 33 "/usr/include/string.h" 2 3 4
# 42 "/usr/include/string.h" 3 4
extern void *memcpy (void *__restrict __dest, const void *__restrict __src,
       size_t __n) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));


extern void *memmove (void *__dest, const void *__src, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));






extern void *memccpy (void *__restrict __dest, const void *__restrict __src,
        int __c, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));





extern void *memset (void *__s, int __c, size_t __n) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int memcmp (const void *__s1, const void *__s2, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
# 92 "/usr/include/string.h" 3 4
extern void *memchr (const void *__s, int __c, size_t __n)
      __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
# 125 "/usr/include/string.h" 3 4
extern char *strcpy (char *__restrict __dest, const char *__restrict __src)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));

extern char *strncpy (char *__restrict __dest,
        const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));


extern char *strcat (char *__restrict __dest, const char *__restrict __src)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));

extern char *strncat (char *__restrict __dest, const char *__restrict __src,
        size_t __n) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));


extern int strcmp (const char *__s1, const char *__s2)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));

extern int strncmp (const char *__s1, const char *__s2, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));


extern int strcoll (const char *__s1, const char *__s2)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));

extern size_t strxfrm (char *__restrict __dest,
         const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));
# 162 "/usr/include/string.h" 3 4
extern int strcoll_l (const char *__s1, const char *__s2, __locale_t __l)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2, 3)));

extern size_t strxfrm_l (char *__dest, const char *__src, size_t __n,
    __locale_t __l) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2, 4)));





extern char *strdup (const char *__s)
     __attribute__ ((__nothrow__ )) __attribute__ ((__malloc__)) __attribute__ ((__nonnull__ (1)));






extern char *strndup (const char *__string, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__malloc__)) __attribute__ ((__nonnull__ (1)));
# 232 "/usr/include/string.h" 3 4
extern char *strchr (const char *__s, int __c)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
# 259 "/usr/include/string.h" 3 4
extern char *strrchr (const char *__s, int __c)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
# 281 "/usr/include/string.h" 3 4
extern size_t strcspn (const char *__s, const char *__reject)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));


extern size_t strspn (const char *__s, const char *__accept)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
# 311 "/usr/include/string.h" 3 4
extern char *strpbrk (const char *__s, const char *__accept)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
# 338 "/usr/include/string.h" 3 4
extern char *strstr (const char *__haystack, const char *__needle)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));




extern char *strtok (char *__restrict __s, const char *__restrict __delim)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));




extern char *__strtok_r (char *__restrict __s,
    const char *__restrict __delim,
    char **__restrict __save_ptr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2, 3)));

extern char *strtok_r (char *__restrict __s, const char *__restrict __delim,
         char **__restrict __save_ptr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2, 3)));
# 395 "/usr/include/string.h" 3 4
extern size_t strlen (const char *__s)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));





extern size_t strnlen (const char *__string, size_t __maxlen)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));





extern char *strerror (int __errnum) __attribute__ ((__nothrow__ ));
# 423 "/usr/include/string.h" 3 4
extern int strerror_r (int __errnum, char *__buf, size_t __buflen) __asm__ ("" "__xpg_strerror_r") __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));
# 441 "/usr/include/string.h" 3 4
extern char *strerror_l (int __errnum, __locale_t __l) __attribute__ ((__nothrow__ ));





extern void __bzero (void *__s, size_t __n) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));



extern void bcopy (const void *__src, void *__dest, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));


extern void bzero (void *__s, size_t __n) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int bcmp (const void *__s1, const void *__s2, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
# 485 "/usr/include/string.h" 3 4
extern char *index (const char *__s, int __c)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
# 513 "/usr/include/string.h" 3 4
extern char *rindex (const char *__s, int __c)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));




extern int ffs (int __i) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
# 532 "/usr/include/string.h" 3 4
extern int strcasecmp (const char *__s1, const char *__s2)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));


extern int strncasecmp (const char *__s1, const char *__s2, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
# 555 "/usr/include/string.h" 3 4
extern char *strsep (char **__restrict __stringp,
       const char *__restrict __delim)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));




extern char *strsignal (int __sig) __attribute__ ((__nothrow__ ));


extern char *__stpcpy (char *__restrict __dest, const char *__restrict __src)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern char *stpcpy (char *__restrict __dest, const char *__restrict __src)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));



extern char *__stpncpy (char *__restrict __dest,
   const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern char *stpncpy (char *__restrict __dest,
        const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
# 25 "/usr/include/glib-2.0/glib/gi18n.h" 2
# 26 "../../app/gimp-intl.h" 2
# 36 "gimprc-deserialize.c" 2


static GTokenType gimp_rc_deserialize_unknown (GimpConfig *config,
                                               GScanner *scanner);


gboolean
gimp_rc_deserialize (GimpConfig *config,
                     GScanner *scanner,
                     gint nest_level,
                     gpointer data)
{
  GObjectClass *klass;
  GParamSpec **property_specs;
  guint n_property_specs;
  guint i;
  guint scope_id;
  guint old_scope_id;
  GTokenType token;
  GTokenType next;

  do{ if ((((__extension__ ({ GTypeInstance *__inst = (GTypeInstance*) ((config)); GType __t = ((gimp_config_interface_get_type ())); gboolean __r; if (!__inst) __r = (0); else if (__inst->g_class && __inst->g_class->g_type == __t) __r = (!(0)); else __r = g_type_check_instance_is_a (__inst, __t); __r; }))))) { } else { g_return_if_fail_warning ("Gimp-Config", ((const char*) (__func__)), "GIMP_IS_CONFIG (config)"); return ((0)); }; }while (0);

  klass = ((((GObjectClass*) (((GTypeInstance*) ((config)))->g_class))));

  property_specs = g_object_class_list_properties (klass, &n_property_specs);
  if (! property_specs)
    return (!(0));

  scope_id = g_type_qname (((((GTypeClass*) (((GTypeInstance*) (config))->g_class))->g_type)));
  old_scope_id = g_scanner_set_scope (scanner, scope_id);

  for (i = 0; i < n_property_specs; i++)
    {
      GParamSpec *prop_spec = property_specs[i];

      if (prop_spec->flags & (1 << (0 + (8))))
        {
          g_scanner_scope_add_symbol (scanner, scope_id,
                                      prop_spec->name, prop_spec);
        }
    }

  g_free (property_specs);

  g_object_freeze_notify (((((GObject*) g_type_check_instance_cast ((GTypeInstance*) ((config)), (((GType) ((20) << (2)))))))));

  token = G_TOKEN_LEFT_PAREN;

  while ((!(0)))
    {
      next = g_scanner_peek_next_token (scanner);

      if ((next != token && ! (token == G_TOKEN_SYMBOL && next == G_TOKEN_IDENTIFIER)))

        {
          break;
        }

      token = g_scanner_get_next_token (scanner);

      switch (token)
        {
        case G_TOKEN_LEFT_PAREN:
          token = G_TOKEN_SYMBOL;
          break;

        case G_TOKEN_IDENTIFIER:
          token = gimp_rc_deserialize_unknown (config, scanner);
          break;

        case G_TOKEN_SYMBOL:
          token = gimp_config_deserialize_property (config,
                                                    scanner, nest_level);
          break;

        case G_TOKEN_RIGHT_PAREN:
          token = G_TOKEN_LEFT_PAREN;
          break;

        default:
          break;
        }
    }

  g_scanner_set_scope (scanner, old_scope_id);

  g_object_thaw_notify (((((GObject*) g_type_check_instance_cast ((GTypeInstance*) ((config)), (((GType) ((20) << (2)))))))));

  if (token == G_TOKEN_NONE)
    return (0);





  if (token == G_TOKEN_STRING && next == G_TOKEN_IDENTIFIER)
    {
      g_scanner_unexp_token (scanner, G_TOKEN_SYMBOL, ((void*)0), ((void*)0), ((void*)0),
                             gettext ("fatal parse error"), (!(0)));
      return (0);
    }

  return gimp_config_deserialize_return (scanner, token, nest_level);
}

static GTokenType
gimp_rc_deserialize_unknown (GimpConfig *config,
                             GScanner *scanner)
{
  gchar *key;
  guint old_scope_id;

  old_scope_id = g_scanner_set_scope (scanner, 0);

  if (g_scanner_peek_next_token (scanner) != G_TOKEN_STRING)
    return G_TOKEN_STRING;

  key = g_strdup (scanner->value.v_identifier);

  g_scanner_get_next_token (scanner);

  g_scanner_set_scope (scanner, old_scope_id);

  if (! g_utf8_validate (scanner->value.v_string, -1, ((void*)0)))
    {
      g_scanner_error (scanner,
                       gettext ("value for token %s is not a valid UTF-8 string"),
                       key);
      g_free (key);
      return G_TOKEN_NONE;
    }

  gimp_rc_add_unknown_token (config, key, scanner->value.v_string);
  g_free (key);

  return G_TOKEN_RIGHT_PAREN;
}
