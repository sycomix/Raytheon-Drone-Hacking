.class public Lorg/apache/sanselan/palette/PaletteFactory;
.super Ljava/lang/Object;
.source "PaletteFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/sanselan/palette/PaletteFactory$DivisionCandidate;
    }
.end annotation


# static fields
.field public static final components:I = 0x3

.field private static final debug:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 300
    return-void
.end method

.method private divide(Ljava/util/ArrayList;I[II)Ljava/util/ArrayList;
    .locals 9
    .param p1, "v"    # Ljava/util/ArrayList;
    .param p2, "desired_count"    # I
    .param p3, "table"    # [I
    .param p4, "precision"    # I

    .prologue
    .line 317
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 319
    .local v4, "ignore":Ljava/util/ArrayList;
    const/4 v1, 0x0

    .line 322
    .local v1, "count":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 328
    const/4 v5, -0x1

    .line 329
    .local v5, "max_area":I
    const/4 v6, 0x0

    .line 331
    .local v6, "max_subset":Lorg/apache/sanselan/palette/ColorSpaceSubset;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v3, v8, :cond_4

    .line 333
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/sanselan/palette/ColorSpaceSubset;

    .line 334
    .local v7, "subset":Lorg/apache/sanselan/palette/ColorSpaceSubset;
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 331
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 336
    :cond_2
    iget v0, v7, Lorg/apache/sanselan/palette/ColorSpaceSubset;->total:I

    .line 338
    .local v0, "area":I
    if-nez v6, :cond_3

    .line 340
    move-object v6, v7

    .line 341
    move v5, v0

    goto :goto_1

    .line 343
    :cond_3
    if-le v0, v5, :cond_1

    .line 345
    move-object v6, v7

    .line 346
    move v5, v0

    goto :goto_1

    .line 350
    .end local v0    # "area":I
    .end local v7    # "subset":Lorg/apache/sanselan/palette/ColorSpaceSubset;
    :cond_4
    if-nez v6, :cond_5

    .line 372
    :goto_2
    return-object p1

    .line 359
    :cond_5
    invoke-direct {p0, p3, v6, p4}, Lorg/apache/sanselan/palette/PaletteFactory;->divideSubset2([ILorg/apache/sanselan/palette/ColorSpaceSubset;I)Lorg/apache/sanselan/palette/PaletteFactory$DivisionCandidate;

    move-result-object v2

    .line 361
    .local v2, "dc":Lorg/apache/sanselan/palette/PaletteFactory$DivisionCandidate;
    if-eqz v2, :cond_6

    .line 363
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 364
    invoke-static {v2}, Lorg/apache/sanselan/palette/PaletteFactory$DivisionCandidate;->access$000(Lorg/apache/sanselan/palette/PaletteFactory$DivisionCandidate;)Lorg/apache/sanselan/palette/ColorSpaceSubset;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    invoke-static {v2}, Lorg/apache/sanselan/palette/PaletteFactory$DivisionCandidate;->access$100(Lorg/apache/sanselan/palette/PaletteFactory$DivisionCandidate;)Lorg/apache/sanselan/palette/ColorSpaceSubset;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    :goto_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ne v8, p2, :cond_0

    goto :goto_2

    .line 368
    :cond_6
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method private divideSubset2([ILorg/apache/sanselan/palette/ColorSpaceSubset;II)Ljava/util/ArrayList;
    .locals 26
    .param p1, "table"    # [I
    .param p2, "subset"    # Lorg/apache/sanselan/palette/ColorSpaceSubset;
    .param p3, "component"    # I
    .param p4, "precision"    # I

    .prologue
    .line 208
    move-object/from16 v0, p2

    iget v0, v0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->total:I

    move/from16 v25, v0

    .line 210
    .local v25, "total":I
    move-object/from16 v0, p2

    iget-object v5, v0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->mins:[I

    array-length v5, v5

    new-array v0, v5, [I

    move-object/from16 v24, v0

    .line 211
    .local v24, "slice_mins":[I
    move-object/from16 v0, p2

    iget-object v5, v0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->mins:[I

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p2

    iget-object v8, v0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->mins:[I

    array-length v8, v8

    move-object/from16 v0, v24

    invoke-static {v5, v6, v0, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 212
    move-object/from16 v0, p2

    iget-object v5, v0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->maxs:[I

    array-length v5, v5

    new-array v0, v5, [I

    move-object/from16 v23, v0

    .line 213
    .local v23, "slice_maxs":[I
    move-object/from16 v0, p2

    iget-object v5, v0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->maxs:[I

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p2

    iget-object v8, v0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->maxs:[I

    array-length v8, v8

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 215
    const/4 v10, 0x0

    .line 217
    .local v10, "sum1":I
    const/16 v21, 0x0

    .line 220
    .local v21, "last":I
    move-object/from16 v0, p2

    iget-object v5, v0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->mins:[I

    aget v11, v5, p3

    .local v11, "slice1":I
    :goto_0
    move-object/from16 v0, p2

    iget-object v5, v0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->maxs:[I

    aget v5, v5, p3

    add-int/lit8 v5, v5, 0x1

    if-eq v11, v5, :cond_0

    .line 223
    aput v11, v24, p3

    .line 224
    aput v11, v23, p3

    .line 226
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    move-object/from16 v3, v23

    move/from16 v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/sanselan/palette/PaletteFactory;->getFrequencyTotal([I[I[II)I

    move-result v21

    .line 229
    add-int v10, v10, v21

    .line 231
    div-int/lit8 v5, v25, 0x2

    if-lt v10, v5, :cond_3

    .line 235
    :cond_0
    sub-int v17, v10, v21

    .line 236
    .local v17, "sum2":I
    add-int/lit8 v18, v11, -0x1

    .local v18, "slice2":I
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    .line 240
    invoke-direct/range {v5 .. v11}, Lorg/apache/sanselan/palette/PaletteFactory;->finishDivision([ILorg/apache/sanselan/palette/ColorSpaceSubset;IIII)Lorg/apache/sanselan/palette/PaletteFactory$DivisionCandidate;

    move-result-object v19

    .local v19, "dc1":Lorg/apache/sanselan/palette/PaletteFactory$DivisionCandidate;
    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move/from16 v15, p3

    move/from16 v16, p4

    .line 242
    invoke-direct/range {v12 .. v18}, Lorg/apache/sanselan/palette/PaletteFactory;->finishDivision([ILorg/apache/sanselan/palette/ColorSpaceSubset;IIII)Lorg/apache/sanselan/palette/PaletteFactory$DivisionCandidate;

    move-result-object v20

    .line 245
    .local v20, "dc2":Lorg/apache/sanselan/palette/PaletteFactory$DivisionCandidate;
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 247
    .local v22, "result":Ljava/util/ArrayList;
    if-eqz v19, :cond_1

    .line 248
    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    :cond_1
    if-eqz v20, :cond_2

    .line 250
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    :cond_2
    return-object v22

    .line 220
    .end local v17    # "sum2":I
    .end local v18    # "slice2":I
    .end local v19    # "dc1":Lorg/apache/sanselan/palette/PaletteFactory$DivisionCandidate;
    .end local v20    # "dc2":Lorg/apache/sanselan/palette/PaletteFactory$DivisionCandidate;
    .end local v22    # "result":Ljava/util/ArrayList;
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_0
.end method

.method private divideSubset2([ILorg/apache/sanselan/palette/ColorSpaceSubset;I)Lorg/apache/sanselan/palette/PaletteFactory$DivisionCandidate;
    .locals 26
    .param p1, "table"    # [I
    .param p2, "subset"    # Lorg/apache/sanselan/palette/ColorSpaceSubset;
    .param p3, "precision"    # I

    .prologue
    .line 258
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 260
    .local v12, "dcs":Ljava/util/ArrayList;
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v19

    move/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/sanselan/palette/PaletteFactory;->divideSubset2([ILorg/apache/sanselan/palette/ColorSpaceSubset;II)Ljava/util/ArrayList;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 261
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v19

    move/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/sanselan/palette/PaletteFactory;->divideSubset2([ILorg/apache/sanselan/palette/ColorSpaceSubset;II)Ljava/util/ArrayList;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 262
    const/16 v19, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v19

    move/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/sanselan/palette/PaletteFactory;->divideSubset2([ILorg/apache/sanselan/palette/ColorSpaceSubset;II)Ljava/util/ArrayList;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 264
    const/4 v10, 0x0

    .line 266
    .local v10, "best_v":Lorg/apache/sanselan/palette/PaletteFactory$DivisionCandidate;
    const-wide v8, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 268
    .local v8, "best_score":D
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v15, v0, :cond_2

    .line 270
    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/sanselan/palette/PaletteFactory$DivisionCandidate;

    .line 272
    .local v11, "dc":Lorg/apache/sanselan/palette/PaletteFactory$DivisionCandidate;
    invoke-static {v11}, Lorg/apache/sanselan/palette/PaletteFactory$DivisionCandidate;->access$000(Lorg/apache/sanselan/palette/PaletteFactory$DivisionCandidate;)Lorg/apache/sanselan/palette/ColorSpaceSubset;

    move-result-object v14

    .line 273
    .local v14, "first":Lorg/apache/sanselan/palette/ColorSpaceSubset;
    invoke-static {v11}, Lorg/apache/sanselan/palette/PaletteFactory$DivisionCandidate;->access$100(Lorg/apache/sanselan/palette/PaletteFactory$DivisionCandidate;)Lorg/apache/sanselan/palette/ColorSpaceSubset;

    move-result-object v18

    .line 274
    .local v18, "second":Lorg/apache/sanselan/palette/ColorSpaceSubset;
    iget v6, v14, Lorg/apache/sanselan/palette/ColorSpaceSubset;->total:I

    .line 275
    .local v6, "area1":I
    move-object/from16 v0, v18

    iget v7, v0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->total:I

    .line 277
    .local v7, "area2":I
    sub-int v19, v6, v7

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(I)I

    move-result v13

    .line 278
    .local v13, "diff":I
    int-to-double v0, v13

    move-wide/from16 v22, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v19

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v24, v0

    div-double v20, v22, v24

    .line 280
    .local v20, "split":D
    move-wide/from16 v16, v20

    .line 282
    .local v16, "score":D
    if-nez v10, :cond_1

    .line 284
    move-object v10, v11

    .line 285
    move-wide/from16 v8, v16

    .line 268
    :cond_0
    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 287
    :cond_1
    cmpg-double v19, v16, v8

    if-gez v19, :cond_0

    .line 289
    move-object v10, v11

    .line 290
    move-wide/from16 v8, v16

    goto :goto_1

    .line 295
    .end local v6    # "area1":I
    .end local v7    # "area2":I
    .end local v11    # "dc":Lorg/apache/sanselan/palette/PaletteFactory$DivisionCandidate;
    .end local v13    # "diff":I
    .end local v14    # "first":Lorg/apache/sanselan/palette/ColorSpaceSubset;
    .end local v16    # "score":D
    .end local v18    # "second":Lorg/apache/sanselan/palette/ColorSpaceSubset;
    .end local v20    # "split":D
    :cond_2
    return-object v10
.end method

.method private finishDivision([ILorg/apache/sanselan/palette/ColorSpaceSubset;IIII)Lorg/apache/sanselan/palette/PaletteFactory$DivisionCandidate;
    .locals 14
    .param p1, "table"    # [I
    .param p2, "subset"    # Lorg/apache/sanselan/palette/ColorSpaceSubset;
    .param p3, "component"    # I
    .param p4, "precision"    # I
    .param p5, "sum"    # I
    .param p6, "slice"    # I

    .prologue
    .line 153
    move-object/from16 v0, p2

    iget v13, v0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->total:I

    .line 155
    .local v13, "total":I
    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->mins:[I

    aget v2, v2, p3

    move/from16 v0, p6

    if-lt v0, v2, :cond_0

    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->maxs:[I

    aget v2, v2, p3

    move/from16 v0, p6

    if-lt v0, v2, :cond_1

    .line 158
    :cond_0
    const/4 v2, 0x0

    .line 198
    :goto_0
    return-object v2

    .line 161
    :cond_1
    const/4 v2, 0x1

    move/from16 v0, p5

    if-lt v0, v2, :cond_2

    move/from16 v0, p5

    if-lt v0, v13, :cond_3

    .line 163
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 166
    :cond_3
    sub-int v12, v13, p5

    .line 167
    .local v12, "remainder":I
    const/4 v2, 0x1

    if-lt v12, v2, :cond_4

    if-lt v12, v13, :cond_5

    .line 169
    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    .line 174
    :cond_5
    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->mins:[I

    array-length v2, v2

    new-array v9, v2, [I

    .line 175
    .local v9, "slice_mins":[I
    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->mins:[I

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p2

    iget-object v7, v0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->mins:[I

    array-length v7, v7

    invoke-static {v2, v3, v9, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 176
    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->maxs:[I

    array-length v2, v2

    new-array v5, v2, [I

    .line 177
    .local v5, "slice_maxs":[I
    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->maxs:[I

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p2

    iget-object v7, v0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->maxs:[I

    array-length v7, v7

    invoke-static {v2, v3, v5, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 179
    aput p6, v5, p3

    .line 180
    add-int/lit8 v2, p6, 0x1

    aput v2, v9, p3

    .line 193
    new-instance v1, Lorg/apache/sanselan/palette/ColorSpaceSubset;

    move-object/from16 v0, p2

    iget-object v4, v0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->mins:[I

    move/from16 v2, p5

    move/from16 v3, p4

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lorg/apache/sanselan/palette/ColorSpaceSubset;-><init>(II[I[I[I)V

    .line 195
    .local v1, "first":Lorg/apache/sanselan/palette/ColorSpaceSubset;
    new-instance v6, Lorg/apache/sanselan/palette/ColorSpaceSubset;

    sub-int v7, v13, p5

    move-object/from16 v0, p2

    iget-object v10, v0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->maxs:[I

    move/from16 v8, p4

    move-object v11, p1

    invoke-direct/range {v6 .. v11}, Lorg/apache/sanselan/palette/ColorSpaceSubset;-><init>(II[I[I[I)V

    .line 198
    .local v6, "second":Lorg/apache/sanselan/palette/ColorSpaceSubset;
    new-instance v2, Lorg/apache/sanselan/palette/PaletteFactory$DivisionCandidate;

    move-object/from16 v0, p2

    invoke-direct {v2, v0, v1, v6}, Lorg/apache/sanselan/palette/PaletteFactory$DivisionCandidate;-><init>(Lorg/apache/sanselan/palette/ColorSpaceSubset;Lorg/apache/sanselan/palette/ColorSpaceSubset;Lorg/apache/sanselan/palette/ColorSpaceSubset;)V

    goto :goto_0
.end method

.method private getFrequencyTotal([I[I[II)I
    .locals 11
    .param p1, "table"    # [I
    .param p2, "mins"    # [I
    .param p3, "maxs"    # [I
    .param p4, "precision"    # I

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 125
    const/4 v6, 0x0

    .line 127
    .local v6, "sum":I
    aget v1, p2, v10

    .local v1, "blue":I
    :goto_0
    aget v7, p3, v10

    if-gt v1, v7, :cond_2

    .line 129
    mul-int/lit8 v7, p4, 0x2

    shl-int v0, v1, v7

    .line 130
    .local v0, "b":I
    aget v3, p2, v9

    .local v3, "green":I
    :goto_1
    aget v7, p3, v9

    if-gt v3, v7, :cond_1

    .line 132
    mul-int/lit8 v7, p4, 0x1

    shl-int v2, v3, v7

    .line 134
    .local v2, "g":I
    aget v5, p2, v8

    .local v5, "red":I
    :goto_2
    aget v7, p3, v8

    if-gt v5, v7, :cond_0

    .line 136
    or-int v7, v0, v2

    or-int v4, v7, v5

    .line 138
    .local v4, "index":I
    aget v7, p1, v4

    add-int/2addr v6, v7

    .line 134
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 130
    .end local v4    # "index":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 127
    .end local v2    # "g":I
    .end local v5    # "red":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 143
    .end local v0    # "b":I
    .end local v3    # "green":I
    :cond_2
    return v6
.end method

.method private pixelToQuantizationTableIndex(II)I
    .locals 6
    .param p1, "argb"    # I
    .param p2, "precision"    # I

    .prologue
    .line 107
    const/4 v2, 0x0

    .line 108
    .local v2, "result":I
    const/4 v4, 0x1

    shl-int/2addr v4, p2

    add-int/lit8 v1, v4, -0x1

    .line 110
    .local v1, "precision_mask":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v4, 0x3

    if-ge v0, v4, :cond_0

    .line 112
    and-int/lit16 v3, p1, 0xff

    .line 113
    .local v3, "sample":I
    shr-int/lit8 p1, p1, 0x8

    .line 115
    rsub-int/lit8 v4, p2, 0x8

    shr-int/2addr v3, v4

    .line 116
    shl-int v4, v2, p2

    and-int v5, v3, v1

    or-int v2, v4, v5

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 119
    .end local v3    # "sample":I
    :cond_0
    return v2
.end method


# virtual methods
.method public countTransparentColors(Ljava/awt/image/BufferedImage;)I
    .locals 10
    .param p1, "src"    # Ljava/awt/image/BufferedImage;

    .prologue
    const/4 v8, 0x0

    .line 553
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v1

    .line 554
    .local v1, "cm":Ljava/awt/image/ColorModel;
    invoke-virtual {v1}, Ljava/awt/image/ColorModel;->hasAlpha()Z

    move-result v9

    if-nez v9, :cond_1

    .line 580
    :cond_0
    :goto_0
    return v8

    .line 557
    :cond_1
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v5

    .line 558
    .local v5, "width":I
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v3

    .line 560
    .local v3, "height":I
    const/4 v2, -0x1

    .line 562
    .local v2, "first":I
    const/4 v7, 0x0

    .local v7, "y":I
    :goto_1
    if-ge v7, v3, :cond_5

    .line 563
    const/4 v6, 0x0

    .local v6, "x":I
    :goto_2
    if-ge v6, v5, :cond_4

    .line 565
    invoke-virtual {p1, v6, v7}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v4

    .line 566
    .local v4, "rgb":I
    shr-int/lit8 v9, v4, 0x18

    and-int/lit16 v0, v9, 0xff

    .line 567
    .local v0, "alpha":I
    const/16 v9, 0xff

    if-ge v0, v9, :cond_2

    .line 569
    if-gez v2, :cond_3

    .line 571
    move v2, v4

    .line 563
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 573
    :cond_3
    if-eq v4, v2, :cond_2

    .line 574
    const/4 v8, 0x2

    goto :goto_0

    .line 562
    .end local v0    # "alpha":I
    .end local v4    # "rgb":I
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 578
    .end local v6    # "x":I
    :cond_5
    if-ltz v2, :cond_0

    .line 580
    const/4 v8, 0x1

    goto :goto_0
.end method

.method public countTrasparentColors([I)I
    .locals 5
    .param p1, "rgbs"    # [I

    .prologue
    .line 529
    const/4 v1, -0x1

    .line 531
    .local v1, "first":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, p1

    if-ge v2, v4, :cond_2

    .line 533
    aget v3, p1, v2

    .line 534
    .local v3, "rgb":I
    shr-int/lit8 v4, v3, 0x18

    and-int/lit16 v0, v4, 0xff

    .line 535
    .local v0, "alpha":I
    const/16 v4, 0xff

    if-ge v0, v4, :cond_0

    .line 537
    if-gez v1, :cond_1

    .line 539
    move v1, v3

    .line 531
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 541
    :cond_1
    if-eq v3, v1, :cond_0

    .line 542
    const/4 v4, 0x2

    .line 548
    .end local v0    # "alpha":I
    .end local v3    # "rgb":I
    :goto_1
    return v4

    .line 546
    :cond_2
    if-gez v1, :cond_3

    .line 547
    const/4 v4, 0x0

    goto :goto_1

    .line 548
    :cond_3
    const/4 v4, 0x1

    goto :goto_1
.end method

.method public hasTransparency(Ljava/awt/image/BufferedImage;)Z
    .locals 1
    .param p1, "src"    # Ljava/awt/image/BufferedImage;

    .prologue
    .line 504
    const/16 v0, 0xff

    invoke-virtual {p0, p1, v0}, Lorg/apache/sanselan/palette/PaletteFactory;->hasTransparency(Ljava/awt/image/BufferedImage;I)Z

    move-result v0

    return v0
.end method

.method public hasTransparency(Ljava/awt/image/BufferedImage;I)Z
    .locals 8
    .param p1, "src"    # Ljava/awt/image/BufferedImage;
    .param p2, "threshold"    # I

    .prologue
    const/4 v6, 0x0

    .line 509
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v3

    .line 510
    .local v3, "width":I
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v2

    .line 512
    .local v2, "height":I
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v7

    invoke-virtual {v7}, Ljava/awt/image/ColorModel;->hasAlpha()Z

    move-result v7

    if-nez v7, :cond_1

    .line 524
    :cond_0
    :goto_0
    return v6

    .line 515
    :cond_1
    const/4 v5, 0x0

    .local v5, "y":I
    :goto_1
    if-ge v5, v2, :cond_0

    .line 516
    const/4 v4, 0x0

    .local v4, "x":I
    :goto_2
    if-ge v4, v3, :cond_3

    .line 518
    invoke-virtual {p1, v4, v5}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v1

    .line 519
    .local v1, "argb":I
    shr-int/lit8 v7, v1, 0x18

    and-int/lit16 v0, v7, 0xff

    .line 520
    .local v0, "alpha":I
    if-ge v0, p2, :cond_2

    .line 521
    const/4 v6, 0x1

    goto :goto_0

    .line 516
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 515
    .end local v0    # "alpha":I
    .end local v1    # "argb":I
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method public isGrayscale(Ljava/awt/image/BufferedImage;)Z
    .locals 11
    .param p1, "src"    # Ljava/awt/image/BufferedImage;

    .prologue
    const/4 v8, 0x1

    .line 479
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v5

    .line 480
    .local v5, "width":I
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v3

    .line 482
    .local v3, "height":I
    const/4 v9, 0x6

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v10

    invoke-virtual {v10}, Ljava/awt/image/ColorModel;->getColorSpace()Ljava/awt/color/ColorSpace;

    move-result-object v10

    invoke-virtual {v10}, Ljava/awt/color/ColorSpace;->getType()I

    move-result v10

    if-ne v9, v10, :cond_1

    .line 499
    :cond_0
    :goto_0
    return v8

    .line 486
    :cond_1
    const/4 v7, 0x0

    .local v7, "y":I
    :goto_1
    if-ge v7, v3, :cond_0

    .line 487
    const/4 v6, 0x0

    .local v6, "x":I
    :goto_2
    if-ge v6, v5, :cond_4

    .line 489
    invoke-virtual {p1, v6, v7}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v0

    .line 491
    .local v0, "argb":I
    shr-int/lit8 v9, v0, 0x10

    and-int/lit16 v4, v9, 0xff

    .line 492
    .local v4, "red":I
    shr-int/lit8 v9, v0, 0x8

    and-int/lit16 v2, v9, 0xff

    .line 493
    .local v2, "green":I
    shr-int/lit8 v9, v0, 0x0

    and-int/lit16 v1, v9, 0xff

    .line 495
    .local v1, "blue":I
    if-ne v4, v2, :cond_2

    if-eq v4, v1, :cond_3

    .line 496
    :cond_2
    const/4 v8, 0x0

    goto :goto_0

    .line 487
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 486
    .end local v0    # "argb":I
    .end local v1    # "blue":I
    .end local v2    # "green":I
    .end local v4    # "red":I
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1
.end method

.method public makePaletteFancy(Ljava/awt/image/BufferedImage;)V
    .locals 22
    .param p1, "src"    # Ljava/awt/image/BufferedImage;

    .prologue
    .line 36
    const/high16 v20, 0x200000

    move/from16 v0, v20

    new-array v15, v0, [B

    .line 37
    .local v15, "rgbmap":[B
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    array-length v0, v15

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v10, v0, :cond_0

    .line 38
    const/16 v20, 0x0

    aput-byte v20, v15, v10

    .line 37
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v17

    .line 41
    .local v17, "width":I
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v8

    .line 43
    .local v8, "height":I
    const/16 v19, 0x0

    .local v19, "y":I
    :goto_1
    move/from16 v0, v19

    if-ge v0, v8, :cond_2

    .line 44
    const/16 v18, 0x0

    .local v18, "x":I
    :goto_2
    move/from16 v0, v18

    move/from16 v1, v17

    if-ge v0, v1, :cond_1

    .line 46
    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v3

    .line 47
    .local v3, "argb":I
    const v20, 0x1fffff

    and-int v16, v20, v3

    .line 48
    .local v16, "rggbb":I
    shr-int/lit8 v20, v3, 0x15

    and-int/lit8 v9, v20, 0x7

    .line 49
    .local v9, "highred":I
    const/16 v20, 0x1

    shl-int v13, v20, v9

    .line 50
    .local v13, "mask":I
    aget-byte v20, v15, v16

    or-int v20, v20, v13

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    aput-byte v20, v15, v16

    .line 44
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 43
    .end local v3    # "argb":I
    .end local v9    # "highred":I
    .end local v13    # "mask":I
    .end local v16    # "rggbb":I
    :cond_1
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 53
    .end local v18    # "x":I
    :cond_2
    const/4 v6, 0x0

    .line 54
    .local v6, "count":I
    const/4 v10, 0x0

    :goto_3
    array-length v0, v15

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v10, v0, :cond_6

    .line 56
    aget-byte v20, v15, v10

    move/from16 v0, v20

    and-int/lit16 v7, v0, 0xff

    .line 57
    .local v7, "eight":I
    const/16 v20, 0x3

    move/from16 v0, v20

    if-lt v10, v0, :cond_3

    array-length v0, v15

    move/from16 v20, v0

    sub-int v20, v10, v20

    const/16 v21, -0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_3

    .line 60
    :cond_3
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_4
    const/16 v20, 0x8

    move/from16 v0, v20

    if-ge v11, v0, :cond_5

    .line 62
    const/16 v20, 0x1

    rsub-int/lit8 v21, v11, 0x7

    shl-int v13, v20, v21

    .line 63
    .restart local v13    # "mask":I
    and-int v4, v7, v13

    .line 64
    .local v4, "bit":I
    if-lez v4, :cond_4

    .line 65
    add-int/lit8 v6, v6, 0x1

    .line 60
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 54
    .end local v4    # "bit":I
    .end local v13    # "mask":I
    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 73
    .end local v7    # "eight":I
    .end local v11    # "j":I
    :cond_6
    new-array v5, v6, [I

    .line 74
    .local v5, "colormap":[I
    const/4 v12, 0x0

    .line 75
    .local v12, "mapsize":I
    const/4 v10, 0x0

    :goto_5
    array-length v0, v15

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v10, v0, :cond_a

    .line 77
    aget-byte v20, v15, v10

    move/from16 v0, v20

    and-int/lit16 v7, v0, 0xff

    .line 79
    .restart local v7    # "eight":I
    const/4 v11, 0x0

    .restart local v11    # "j":I
    :goto_6
    const/16 v20, 0x8

    move/from16 v0, v20

    if-ge v11, v0, :cond_9

    .line 81
    const/16 v20, 0x1

    rsub-int/lit8 v21, v11, 0x7

    shl-int v13, v20, v21

    .line 82
    .restart local v13    # "mask":I
    and-int v4, v7, v13

    .line 84
    .restart local v4    # "bit":I
    if-lez v4, :cond_8

    .line 86
    rsub-int/lit8 v20, v11, 0x7

    shl-int/lit8 v20, v20, 0x15

    or-int v14, v10, v20

    .line 88
    .local v14, "rgb":I
    array-length v0, v5

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v12, v0, :cond_7

    .line 89
    aput v14, v5, v12

    .line 90
    :cond_7
    add-int/lit8 v12, v12, 0x1

    .line 79
    .end local v14    # "rgb":I
    :cond_8
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 75
    .end local v4    # "bit":I
    .end local v13    # "mask":I
    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 103
    .end local v7    # "eight":I
    .end local v11    # "j":I
    :cond_a
    return-void
.end method

.method public makePaletteQuantized(Ljava/awt/image/BufferedImage;I)Lorg/apache/sanselan/palette/Palette;
    .locals 21
    .param p1, "src"    # Ljava/awt/image/BufferedImage;
    .param p2, "max"    # I

    .prologue
    .line 380
    const/4 v10, 0x6

    .line 382
    .local v10, "precision":I
    mul-int/lit8 v14, v10, 0x3

    .line 383
    .local v14, "table_scale":I
    const/16 v19, 0x1

    shl-int/lit8 v15, v19, 0x12

    .line 384
    .local v15, "table_size":I
    new-array v13, v15, [I

    .line 386
    .local v13, "table":[I
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v16

    .line 387
    .local v16, "width":I
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v6

    .line 389
    .local v6, "height":I
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 390
    .local v12, "subsets":Ljava/util/ArrayList;
    new-instance v3, Lorg/apache/sanselan/palette/ColorSpaceSubset;

    mul-int v19, v16, v6

    move/from16 v0, v19

    invoke-direct {v3, v0, v10}, Lorg/apache/sanselan/palette/ColorSpaceSubset;-><init>(II)V

    .line 391
    .local v3, "all":Lorg/apache/sanselan/palette/ColorSpaceSubset;
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    iget-object v0, v3, Lorg/apache/sanselan/palette/ColorSpaceSubset;->mins:[I

    move-object/from16 v19, v0

    iget-object v0, v3, Lorg/apache/sanselan/palette/ColorSpaceSubset;->maxs:[I

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v13, v1, v2, v10}, Lorg/apache/sanselan/palette/PaletteFactory;->getFrequencyTotal([I[I[II)I

    move-result v9

    .line 399
    .local v9, "pre_total":I
    const/16 v18, 0x0

    .local v18, "y":I
    :goto_0
    move/from16 v0, v18

    if-ge v0, v6, :cond_1

    .line 400
    const/16 v17, 0x0

    .local v17, "x":I
    :goto_1
    move/from16 v0, v17

    move/from16 v1, v16

    if-ge v0, v1, :cond_0

    .line 402
    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v5

    .line 404
    .local v5, "argb":I
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v10}, Lorg/apache/sanselan/palette/PaletteFactory;->pixelToQuantizationTableIndex(II)I

    move-result v8

    .line 406
    .local v8, "index":I
    aget v19, v13, v8

    add-int/lit8 v19, v19, 0x1

    aput v19, v13, v8

    .line 400
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 399
    .end local v5    # "argb":I
    .end local v8    # "index":I
    :cond_0
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 410
    .end local v17    # "x":I
    :cond_1
    iget-object v0, v3, Lorg/apache/sanselan/palette/ColorSpaceSubset;->mins:[I

    move-object/from16 v19, v0

    iget-object v0, v3, Lorg/apache/sanselan/palette/ColorSpaceSubset;->maxs:[I

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v13, v1, v2, v10}, Lorg/apache/sanselan/palette/PaletteFactory;->getFrequencyTotal([I[I[II)I

    move-result v4

    .line 418
    .local v4, "all_total":I
    const/16 v19, 0x100

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v12, v1, v13, v10}, Lorg/apache/sanselan/palette/PaletteFactory;->divide(Ljava/util/ArrayList;I[II)Ljava/util/ArrayList;

    move-result-object v12

    .line 426
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v7, v0, :cond_2

    .line 428
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/sanselan/palette/ColorSpaceSubset;

    .line 430
    .local v11, "subset":Lorg/apache/sanselan/palette/ColorSpaceSubset;
    invoke-virtual {v11, v13}, Lorg/apache/sanselan/palette/ColorSpaceSubset;->setAverageRGB([I)V

    .line 426
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 436
    .end local v11    # "subset":Lorg/apache/sanselan/palette/ColorSpaceSubset;
    :cond_2
    invoke-static {v12}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 438
    new-instance v19, Lorg/apache/sanselan/palette/QuantizedPalette;

    move-object/from16 v0, v19

    invoke-direct {v0, v12, v10}, Lorg/apache/sanselan/palette/QuantizedPalette;-><init>(Ljava/util/ArrayList;I)V

    return-object v19
.end method

.method public makePaletteSimple(Ljava/awt/image/BufferedImage;I)Lorg/apache/sanselan/palette/SimplePalette;
    .locals 13
    .param p1, "src"    # Ljava/awt/image/BufferedImage;
    .param p2, "max"    # I

    .prologue
    .line 444
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 445
    .local v3, "map":Ljava/util/Map;
    new-array v7, p2, [I

    .line 446
    .local v7, "rgbs":[I
    const/4 v6, 0x0

    .line 448
    .local v6, "rgb_count":I
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v8

    .line 449
    .local v8, "width":I
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v1

    .line 451
    .local v1, "height":I
    const/4 v10, 0x0

    .local v10, "y":I
    :goto_0
    if-ge v10, v1, :cond_3

    .line 452
    const/4 v9, 0x0

    .local v9, "x":I
    :goto_1
    if-ge v9, v8, :cond_2

    .line 454
    invoke-virtual {p1, v9, v10}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v0

    .line 455
    .local v0, "argb":I
    const v11, 0xffffff

    and-int v5, v11, v0

    .line 457
    .local v5, "rgb":I
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 458
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_1

    .line 460
    if-ne v6, p2, :cond_0

    .line 461
    const/4 v11, 0x0

    .line 474
    .end local v0    # "argb":I
    .end local v2    # "key":Ljava/lang/String;
    .end local v5    # "rgb":I
    .end local v9    # "x":I
    :goto_2
    return-object v11

    .line 463
    .restart local v0    # "argb":I
    .restart local v2    # "key":Ljava/lang/String;
    .restart local v5    # "rgb":I
    .restart local v9    # "x":I
    :cond_0
    aput v5, v7, v6

    .line 464
    invoke-interface {v3, v2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    add-int/lit8 v6, v6, 0x1

    .line 452
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 451
    .end local v0    # "argb":I
    .end local v2    # "key":Ljava/lang/String;
    .end local v5    # "rgb":I
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 469
    .end local v9    # "x":I
    :cond_3
    new-array v4, v6, [I

    .line 470
    .local v4, "result":[I
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v7, v11, v4, v12, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 471
    invoke-static {v4}, Ljava/util/Arrays;->sort([I)V

    .line 474
    new-instance v11, Lorg/apache/sanselan/palette/SimplePalette;

    invoke-direct {v11, v4}, Lorg/apache/sanselan/palette/SimplePalette;-><init>([I)V

    goto :goto_2
.end method
