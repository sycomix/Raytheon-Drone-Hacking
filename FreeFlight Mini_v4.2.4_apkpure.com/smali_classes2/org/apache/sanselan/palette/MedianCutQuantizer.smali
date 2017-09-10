.class public Lorg/apache/sanselan/palette/MedianCutQuantizer;
.super Ljava/lang/Object;
.source "MedianCutQuantizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/sanselan/palette/MedianCutQuantizer$MedianCutPalette;,
        Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroupCut;,
        Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;,
        Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;
    }
.end annotation


# static fields
.field private static final ALPHA:I = 0x0

.field private static final BLUE:I = 0x3

.field private static final GREEN:I = 0x2

.field private static final RED:I = 0x1


# instance fields
.field private final ignoreAlpha:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "ignore_alpha"    # Z

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-boolean p1, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer;->ignoreAlpha:Z

    .line 36
    return-void
.end method

.method static access$000(Lorg/apache/sanselan/palette/MedianCutQuantizer;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/sanselan/palette/MedianCutQuantizer;

    .prologue
    .line 29
    iget-boolean v0, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer;->ignoreAlpha:Z

    return v0
.end method

.method private doCut(Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;ILjava/util/ArrayList;)V
    .locals 24
    .param p1, "color_group"    # Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;
    .param p2, "mode"    # I
    .param p3, "color_groups"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .prologue
    .line 359
    const/4 v13, 0x0

    .line 360
    .local v13, "count_total":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->color_counts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v14, v2, :cond_0

    .line 362
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->color_counts:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;

    .line 364
    .local v8, "color_count":Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;
    iget v2, v8, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;->count:I

    add-int/2addr v13, v2

    .line 360
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 367
    .end local v8    # "color_count":Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;
    :cond_0
    new-instance v11, Lorg/apache/sanselan/palette/MedianCutQuantizer$2;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v11, v0, v1}, Lorg/apache/sanselan/palette/MedianCutQuantizer$2;-><init>(Lorg/apache/sanselan/palette/MedianCutQuantizer;I)V

    .line 390
    .local v11, "comparator":Ljava/util/Comparator;
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->color_counts:Ljava/util/ArrayList;

    invoke-static {v2, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 391
    int-to-double v2, v13

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    div-double v2, v2, v22

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v12, v2

    .line 392
    .local v12, "count_half":I
    const/16 v19, 0x0

    .local v19, "old_count":I
    const/16 v17, 0x0

    .line 394
    .local v17, "new_count":I
    const/4 v15, 0x0

    .local v15, "median_index":I
    :goto_1
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->color_counts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v15, v2, :cond_1

    .line 396
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->color_counts:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;

    .line 399
    .restart local v8    # "color_count":Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;
    iget v2, v8, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;->count:I

    add-int v17, v17, v2

    .line 401
    move/from16 v0, v17

    if-ge v0, v12, :cond_1

    .line 403
    move/from16 v19, v17

    .line 394
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 409
    .end local v8    # "color_count":Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;
    :cond_1
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->color_counts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v15, v2, :cond_3

    .line 410
    add-int/lit8 v15, v15, -0x1

    .line 419
    :cond_2
    :goto_2
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 421
    new-instance v9, Ljava/util/ArrayList;

    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->color_counts:Ljava/util/ArrayList;

    const/4 v3, 0x0

    add-int/lit8 v6, v15, 0x1

    invoke-virtual {v2, v3, v6}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-direct {v9, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 423
    .local v9, "color_counts1":Ljava/util/ArrayList;
    new-instance v10, Ljava/util/ArrayList;

    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->color_counts:Ljava/util/ArrayList;

    add-int/lit8 v3, v15, 0x1

    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->color_counts:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v2, v3, v6}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-direct {v10, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 428
    .local v10, "color_counts2":Ljava/util/ArrayList;
    new-instance v4, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v2}, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;-><init>(Lorg/apache/sanselan/palette/MedianCutQuantizer;Ljava/util/ArrayList;)V

    .line 429
    .local v4, "less":Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    new-instance v5, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v2}, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;-><init>(Lorg/apache/sanselan/palette/MedianCutQuantizer;Ljava/util/ArrayList;)V

    .line 433
    .local v5, "more":Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 436
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->color_counts:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;

    .line 439
    .local v16, "median_value":Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;
    packed-switch p2, :pswitch_data_0

    .line 454
    new-instance v2, Ljava/lang/Error;

    const-string v3, "Bad mode."

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2

    .line 411
    .end local v4    # "less":Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;
    .end local v5    # "more":Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;
    .end local v9    # "color_counts1":Ljava/util/ArrayList;
    .end local v10    # "color_counts2":Ljava/util/ArrayList;
    .end local v16    # "median_value":Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;
    :cond_3
    if-lez v15, :cond_2

    .line 413
    sub-int v2, v17, v12

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v18

    .line 414
    .local v18, "new_diff":I
    sub-int v2, v12, v19

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v20

    .line 415
    .local v20, "old_diff":I
    move/from16 v0, v20

    move/from16 v1, v18

    if-ge v0, v1, :cond_2

    .line 416
    add-int/lit8 v15, v15, -0x1

    goto :goto_2

    .line 442
    .end local v18    # "new_diff":I
    .end local v20    # "old_diff":I
    .restart local v4    # "less":Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;
    .restart local v5    # "more":Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;
    .restart local v9    # "color_counts1":Ljava/util/ArrayList;
    .restart local v10    # "color_counts2":Ljava/util/ArrayList;
    .restart local v16    # "median_value":Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;
    :pswitch_0
    move-object/from16 v0, v16

    iget v7, v0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;->alpha:I

    .line 456
    .local v7, "limit":I
    :goto_3
    new-instance v2, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroupCut;

    move-object/from16 v3, p0

    move/from16 v6, p2

    invoke-direct/range {v2 .. v7}, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroupCut;-><init>(Lorg/apache/sanselan/palette/MedianCutQuantizer;Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;II)V

    move-object/from16 v0, p1

    iput-object v2, v0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->cut:Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroupCut;

    .line 459
    return-void

    .line 445
    .end local v7    # "limit":I
    :pswitch_1
    move-object/from16 v0, v16

    iget v7, v0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;->red:I

    .line 446
    .restart local v7    # "limit":I
    goto :goto_3

    .line 448
    .end local v7    # "limit":I
    :pswitch_2
    move-object/from16 v0, v16

    iget v7, v0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;->green:I

    .line 449
    .restart local v7    # "limit":I
    goto :goto_3

    .line 451
    .end local v7    # "limit":I
    :pswitch_3
    move-object/from16 v0, v16

    iget v7, v0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;->blue:I

    .line 452
    .restart local v7    # "limit":I
    goto :goto_3

    .line 439
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public groupColors(Ljava/awt/image/BufferedImage;I)Ljava/util/Map;
    .locals 7
    .param p1, "image"    # Ljava/awt/image/BufferedImage;
    .param p2, "max_colors"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .prologue
    .line 225
    const v2, 0x7fffffff

    .line 227
    .local v2, "max":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v4, 0x8

    if-ge v0, v4, :cond_1

    .line 229
    const/16 v4, 0xff

    shl-int/2addr v4, v0

    and-int/lit16 v1, v4, 0xff

    .line 230
    .local v1, "mask":I
    shl-int/lit8 v4, v1, 0x8

    or-int/2addr v4, v1

    shl-int/lit8 v5, v1, 0x10

    or-int/2addr v4, v5

    shl-int/lit8 v5, v1, 0x18

    or-int v1, v4, v5

    .line 232
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "mask("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    invoke-virtual {p0, p1, v2, v1}, Lorg/apache/sanselan/palette/MedianCutQuantizer;->groupColors1(Ljava/awt/image/BufferedImage;II)Ljava/util/Map;

    move-result-object v3

    .line 236
    .local v3, "result":Ljava/util/Map;
    if-eqz v3, :cond_0

    .line 237
    return-object v3

    .line 227
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 239
    .end local v1    # "mask":I
    .end local v3    # "result":Ljava/util/Map;
    :cond_1
    new-instance v4, Ljava/lang/Error;

    const-string v5, ""

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public groupColors1(Ljava/awt/image/BufferedImage;II)Ljava/util/Map;
    .locals 13
    .param p1, "image"    # Ljava/awt/image/BufferedImage;
    .param p2, "max"    # I
    .param p3, "mask"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .prologue
    .line 189
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 191
    .local v10, "color_map":Ljava/util/Map;
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v3

    .line 192
    .local v3, "width":I
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v11

    .line 194
    .local v11, "height":I
    new-array v5, v3, [I

    .line 195
    .local v5, "row":[I
    const/4 v2, 0x0

    .local v2, "y":I
    :goto_0
    if-ge v2, v11, :cond_1

    .line 197
    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v0, p1

    move v7, v3

    invoke-virtual/range {v0 .. v7}, Ljava/awt/image/BufferedImage;->getRGB(IIII[III)[I

    .line 198
    const/4 v12, 0x0

    .local v12, "x":I
    :goto_1
    if-ge v12, v3, :cond_3

    .line 200
    aget v8, v5, v12

    .line 202
    .local v8, "argb":I
    iget-boolean v0, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer;->ignoreAlpha:Z

    if-eqz v0, :cond_0

    .line 203
    const v0, 0xffffff

    and-int/2addr v8, v0

    .line 204
    :cond_0
    and-int v8, v8, p3

    .line 206
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v8}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;

    .line 208
    .local v9, "color":Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;
    if-nez v9, :cond_2

    .line 210
    new-instance v9, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;

    .end local v9    # "color":Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;
    invoke-direct {v9, v8}, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;-><init>(I)V

    .line 211
    .restart local v9    # "color":Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v8}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v10, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-le v0, p2, :cond_2

    .line 213
    const/4 v10, 0x0

    .line 219
    .end local v8    # "argb":I
    .end local v9    # "color":Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;
    .end local v10    # "color_map":Ljava/util/Map;
    .end local v12    # "x":I
    :cond_1
    return-object v10

    .line 215
    .restart local v8    # "argb":I
    .restart local v9    # "color":Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;
    .restart local v10    # "color_map":Ljava/util/Map;
    .restart local v12    # "x":I
    :cond_2
    iget v0, v9, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v9, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;->count:I

    .line 198
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 195
    .end local v8    # "argb":I
    .end local v9    # "color":Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public process(Ljava/awt/image/BufferedImage;IZ)Lorg/apache/sanselan/palette/Palette;
    .locals 15
    .param p1, "image"    # Ljava/awt/image/BufferedImage;
    .param p2, "max_colors"    # I
    .param p3, "verbose"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .prologue
    .line 245
    invoke-virtual/range {p0 .. p2}, Lorg/apache/sanselan/palette/MedianCutQuantizer;->groupColors(Ljava/awt/image/BufferedImage;I)Ljava/util/Map;

    move-result-object v5

    .line 247
    .local v5, "color_map":Ljava/util/Map;
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->size()I

    move-result v7

    .line 248
    .local v7, "discrete_colors":I
    move/from16 v0, p2

    if-gt v7, v0, :cond_3

    .line 250
    if-eqz p3, :cond_0

    .line 251
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    const-string v13, "lossless palette: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;)V

    .line 253
    :cond_0
    new-array v9, v7, [I

    .line 254
    .local v9, "palette":[I
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-direct {v2, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 256
    .local v2, "color_counts":Ljava/util/ArrayList;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v8, v12, :cond_2

    .line 258
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;

    .line 259
    .local v1, "color_count":Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;
    iget v12, v1, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;->argb:I

    aput v12, v9, v8

    .line 260
    iget-boolean v12, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer;->ignoreAlpha:Z

    if-eqz v12, :cond_1

    .line 261
    aget v12, v9, v8

    const/high16 v13, -0x1000000

    or-int/2addr v12, v13

    aput v12, v9, v8

    .line 256
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 264
    .end local v1    # "color_count":Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;
    :cond_2
    new-instance v12, Lorg/apache/sanselan/palette/SimplePalette;

    invoke-direct {v12, v9}, Lorg/apache/sanselan/palette/SimplePalette;-><init>([I)V

    .line 347
    .end local v2    # "color_counts":Ljava/util/ArrayList;
    :goto_1
    return-object v12

    .line 267
    .end local v8    # "i":I
    .end local v9    # "palette":[I
    :cond_3
    if-eqz p3, :cond_4

    .line 268
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    const-string v13, "discrete colors: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;)V

    .line 270
    :cond_4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 271
    .local v4, "color_groups":Ljava/util/ArrayList;
    new-instance v11, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;

    new-instance v12, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v11, p0, v12}, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;-><init>(Lorg/apache/sanselan/palette/MedianCutQuantizer;Ljava/util/ArrayList;)V

    .line 273
    .local v11, "root":Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    new-instance v6, Lorg/apache/sanselan/palette/MedianCutQuantizer$1;

    invoke-direct {v6, p0}, Lorg/apache/sanselan/palette/MedianCutQuantizer$1;-><init>(Lorg/apache/sanselan/palette/MedianCutQuantizer;)V

    .line 288
    .local v6, "comparator":Ljava/util/Comparator;
    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v12

    move/from16 v0, p2

    if-ge v12, v0, :cond_5

    .line 290
    invoke-static {v4, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 292
    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;

    .line 294
    .local v3, "color_group":Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;
    iget v12, v3, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->max_diff:I

    if-nez v12, :cond_7

    .line 320
    .end local v3    # "color_group":Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;
    :cond_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 321
    .local v10, "palette_size":I
    if-eqz p3, :cond_6

    .line 322
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    const-string v13, "palette size: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;)V

    .line 324
    :cond_6
    new-array v9, v10, [I

    .line 326
    .restart local v9    # "palette":[I
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v8, v12, :cond_c

    .line 328
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;

    .line 330
    .restart local v3    # "color_group":Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;
    invoke-virtual {v3}, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->getMedianValue()I

    move-result v12

    aput v12, v9, v8

    .line 332
    iput v8, v3, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->palette_index:I

    .line 334
    iget-object v12, v3, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->color_counts:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x1

    if-ge v12, v13, :cond_b

    .line 335
    new-instance v12, Lorg/apache/sanselan/ImageWriteException;

    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    const-string v14, "empty color_group: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 296
    .end local v8    # "i":I
    .end local v9    # "palette":[I
    .end local v10    # "palette_size":I
    :cond_7
    iget-boolean v12, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer;->ignoreAlpha:Z

    if-nez v12, :cond_8

    iget v12, v3, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->alpha_diff:I

    iget v13, v3, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->red_diff:I

    if-le v12, v13, :cond_8

    iget v12, v3, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->alpha_diff:I

    iget v13, v3, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->green_diff:I

    if-le v12, v13, :cond_8

    iget v12, v3, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->alpha_diff:I

    iget v13, v3, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->blue_diff:I

    if-le v12, v13, :cond_8

    .line 301
    const/4 v12, 0x0

    invoke-direct {p0, v3, v12, v4}, Lorg/apache/sanselan/palette/MedianCutQuantizer;->doCut(Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;ILjava/util/ArrayList;)V

    goto/16 :goto_2

    .line 303
    :cond_8
    iget v12, v3, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->red_diff:I

    iget v13, v3, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->green_diff:I

    if-le v12, v13, :cond_9

    iget v12, v3, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->red_diff:I

    iget v13, v3, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->blue_diff:I

    if-le v12, v13, :cond_9

    .line 306
    const/4 v12, 0x1

    invoke-direct {p0, v3, v12, v4}, Lorg/apache/sanselan/palette/MedianCutQuantizer;->doCut(Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;ILjava/util/ArrayList;)V

    goto/16 :goto_2

    .line 308
    :cond_9
    iget v12, v3, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->green_diff:I

    iget v13, v3, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->blue_diff:I

    if-le v12, v13, :cond_a

    .line 310
    const/4 v12, 0x2

    invoke-direct {p0, v3, v12, v4}, Lorg/apache/sanselan/palette/MedianCutQuantizer;->doCut(Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;ILjava/util/ArrayList;)V

    goto/16 :goto_2

    .line 314
    :cond_a
    const/4 v12, 0x3

    invoke-direct {p0, v3, v12, v4}, Lorg/apache/sanselan/palette/MedianCutQuantizer;->doCut(Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;ILjava/util/ArrayList;)V

    goto/16 :goto_2

    .line 326
    .restart local v8    # "i":I
    .restart local v9    # "palette":[I
    .restart local v10    # "palette_size":I
    :cond_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 344
    .end local v3    # "color_group":Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;
    :cond_c
    if-le v10, v7, :cond_d

    .line 345
    new-instance v12, Lorg/apache/sanselan/ImageWriteException;

    const-string v13, "palette_size>discrete_colors"

    invoke-direct {v12, v13}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 347
    :cond_d
    new-instance v12, Lorg/apache/sanselan/palette/MedianCutQuantizer$MedianCutPalette;

    invoke-direct {v12, p0, v11, v9}, Lorg/apache/sanselan/palette/MedianCutQuantizer$MedianCutPalette;-><init>(Lorg/apache/sanselan/palette/MedianCutQuantizer;Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;[I)V

    goto/16 :goto_1
.end method
