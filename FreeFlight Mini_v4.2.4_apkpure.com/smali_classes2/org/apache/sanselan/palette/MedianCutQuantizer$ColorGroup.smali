.class Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;
.super Ljava/lang/Object;
.source "MedianCutQuantizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sanselan/palette/MedianCutQuantizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ColorGroup"
.end annotation


# instance fields
.field public final alpha_diff:I

.field public final blue_diff:I

.field public final color_counts:Ljava/util/ArrayList;

.field public cut:Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroupCut;

.field public final diff_total:I

.field public final green_diff:I

.field public max_alpha:I

.field public max_blue:I

.field public final max_diff:I

.field public max_green:I

.field public max_red:I

.field public min_alpha:I

.field public min_blue:I

.field public min_green:I

.field public min_red:I

.field public palette_index:I

.field public final red_diff:I

.field private final this$0:Lorg/apache/sanselan/palette/MedianCutQuantizer;


# direct methods
.method public constructor <init>(Lorg/apache/sanselan/palette/MedianCutQuantizer;Ljava/util/ArrayList;)V
    .locals 5
    .param p2, "color_counts"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .prologue
    const v4, 0x7fffffff

    const/high16 v3, -0x80000000

    .line 96
    iput-object p1, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->this$0:Lorg/apache/sanselan/palette/MedianCutQuantizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->cut:Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroupCut;

    .line 74
    const/4 v2, -0x1

    iput v2, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->palette_index:I

    .line 77
    iput v4, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->min_red:I

    .line 78
    iput v3, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->max_red:I

    .line 79
    iput v4, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->min_green:I

    .line 80
    iput v3, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->max_green:I

    .line 81
    iput v4, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->min_blue:I

    .line 82
    iput v3, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->max_blue:I

    .line 83
    iput v4, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->min_alpha:I

    .line 84
    iput v3, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->max_alpha:I

    .line 97
    iput-object p2, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->color_counts:Ljava/util/ArrayList;

    .line 99
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    .line 100
    new-instance v2, Lorg/apache/sanselan/ImageWriteException;

    const-string v3, "empty color_group"

    invoke-direct {v2, v3}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 102
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 104
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;

    .line 106
    .local v0, "color":Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;
    iget v2, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->min_alpha:I

    iget v3, v0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;->alpha:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->min_alpha:I

    .line 107
    iget v2, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->max_alpha:I

    iget v3, v0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;->alpha:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->max_alpha:I

    .line 108
    iget v2, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->min_red:I

    iget v3, v0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;->red:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->min_red:I

    .line 109
    iget v2, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->max_red:I

    iget v3, v0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;->red:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->max_red:I

    .line 110
    iget v2, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->min_green:I

    iget v3, v0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;->green:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->min_green:I

    .line 111
    iget v2, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->max_green:I

    iget v3, v0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;->green:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->max_green:I

    .line 112
    iget v2, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->min_blue:I

    iget v3, v0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;->blue:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->min_blue:I

    .line 113
    iget v2, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->max_blue:I

    iget v3, v0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;->blue:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->max_blue:I

    .line 102
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    .end local v0    # "color":Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;
    :cond_1
    iget v2, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->max_alpha:I

    iget v3, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->min_alpha:I

    sub-int/2addr v2, v3

    iput v2, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->alpha_diff:I

    .line 117
    iget v2, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->max_red:I

    iget v3, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->min_red:I

    sub-int/2addr v2, v3

    iput v2, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->red_diff:I

    .line 118
    iget v2, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->max_green:I

    iget v3, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->min_green:I

    sub-int/2addr v2, v3

    iput v2, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->green_diff:I

    .line 119
    iget v2, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->max_blue:I

    iget v3, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->min_blue:I

    sub-int/2addr v2, v3

    iput v2, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->blue_diff:I

    .line 120
    invoke-static {p1}, Lorg/apache/sanselan/palette/MedianCutQuantizer;->access$000(Lorg/apache/sanselan/palette/MedianCutQuantizer;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->red_diff:I

    :goto_1
    iget v3, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->green_diff:I

    iget v4, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->blue_diff:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->max_diff:I

    .line 122
    invoke-static {p1}, Lorg/apache/sanselan/palette/MedianCutQuantizer;->access$000(Lorg/apache/sanselan/palette/MedianCutQuantizer;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    :goto_2
    iget v3, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->red_diff:I

    add-int/2addr v2, v3

    iget v3, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->green_diff:I

    add-int/2addr v2, v3

    iget v3, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->blue_diff:I

    add-int/2addr v2, v3

    iput v2, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->diff_total:I

    .line 125
    return-void

    .line 120
    :cond_2
    iget v2, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->alpha_diff:I

    iget v3, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->red_diff:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_1

    .line 122
    :cond_3
    iget v2, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->alpha_diff:I

    goto :goto_2
.end method


# virtual methods
.method public contains(I)Z
    .locals 6
    .param p1, "argb"    # I

    .prologue
    const/4 v4, 0x0

    .line 129
    shr-int/lit8 v5, p1, 0x18

    and-int/lit16 v0, v5, 0xff

    .line 130
    .local v0, "alpha":I
    shr-int/lit8 v5, p1, 0x10

    and-int/lit16 v3, v5, 0xff

    .line 131
    .local v3, "red":I
    shr-int/lit8 v5, p1, 0x8

    and-int/lit16 v2, v5, 0xff

    .line 132
    .local v2, "green":I
    shr-int/lit8 v5, p1, 0x0

    and-int/lit16 v1, v5, 0xff

    .line 134
    .local v1, "blue":I
    iget-object v5, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->this$0:Lorg/apache/sanselan/palette/MedianCutQuantizer;

    invoke-static {v5}, Lorg/apache/sanselan/palette/MedianCutQuantizer;->access$000(Lorg/apache/sanselan/palette/MedianCutQuantizer;)Z

    move-result v5

    if-nez v5, :cond_1

    iget v5, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->min_alpha:I

    if-lt v0, v5, :cond_0

    iget v5, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->max_alpha:I

    if-le v0, v5, :cond_1

    .line 142
    :cond_0
    :goto_0
    return v4

    .line 136
    :cond_1
    iget v5, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->min_red:I

    if-lt v3, v5, :cond_0

    iget v5, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->max_red:I

    if-gt v3, v5, :cond_0

    .line 138
    iget v5, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->min_green:I

    if-lt v2, v5, :cond_0

    iget v5, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->max_green:I

    if-gt v2, v5, :cond_0

    .line 140
    iget v5, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->min_blue:I

    if-lt v1, v5, :cond_0

    iget v5, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->max_blue:I

    if-gt v1, v5, :cond_0

    .line 142
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public getMedianValue()I
    .locals 22

    .prologue
    .line 147
    const-wide/16 v10, 0x0

    .line 148
    .local v10, "count_total":J
    const-wide/16 v4, 0x0

    .local v4, "alpha_total":J
    const-wide/16 v16, 0x0

    .local v16, "red_total":J
    const-wide/16 v12, 0x0

    .local v12, "green_total":J
    const-wide/16 v6, 0x0

    .line 150
    .local v6, "blue_total":J
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->color_counts:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v14, v0, :cond_0

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->color_counts:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;

    .line 154
    .local v8, "color":Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;
    iget v0, v8, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;->count:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    add-long v10, v10, v18

    .line 155
    iget v0, v8, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;->count:I

    move/from16 v18, v0

    iget v0, v8, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;->alpha:I

    move/from16 v19, v0

    mul-int v18, v18, v19

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    add-long v4, v4, v18

    .line 156
    iget v0, v8, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;->count:I

    move/from16 v18, v0

    iget v0, v8, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;->red:I

    move/from16 v19, v0

    mul-int v18, v18, v19

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    add-long v16, v16, v18

    .line 157
    iget v0, v8, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;->count:I

    move/from16 v18, v0

    iget v0, v8, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;->green:I

    move/from16 v19, v0

    mul-int v18, v18, v19

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    add-long v12, v12, v18

    .line 158
    iget v0, v8, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;->count:I

    move/from16 v18, v0

    iget v0, v8, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;->blue:I

    move/from16 v19, v0

    mul-int v18, v18, v19

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    add-long v6, v6, v18

    .line 150
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 161
    .end local v8    # "color":Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->this$0:Lorg/apache/sanselan/palette/MedianCutQuantizer;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lorg/apache/sanselan/palette/MedianCutQuantizer;->access$000(Lorg/apache/sanselan/palette/MedianCutQuantizer;)Z

    move-result v18

    if-eqz v18, :cond_1

    const/16 v2, 0xff

    .line 163
    .local v2, "alpha":I
    :goto_1
    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v18, v0

    long-to-double v0, v10

    move-wide/from16 v20, v0

    div-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->round(D)J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v15, v0

    .line 164
    .local v15, "red":I
    long-to-double v0, v12

    move-wide/from16 v18, v0

    long-to-double v0, v10

    move-wide/from16 v20, v0

    div-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->round(D)J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v9, v0

    .line 165
    .local v9, "green":I
    long-to-double v0, v6

    move-wide/from16 v18, v0

    long-to-double v0, v10

    move-wide/from16 v20, v0

    div-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->round(D)J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v3, v0

    .line 167
    .local v3, "blue":I
    shl-int/lit8 v18, v2, 0x18

    shl-int/lit8 v19, v15, 0x10

    or-int v18, v18, v19

    shl-int/lit8 v19, v9, 0x8

    or-int v18, v18, v19

    or-int v18, v18, v3

    return v18

    .line 161
    .end local v2    # "alpha":I
    .end local v3    # "blue":I
    .end local v9    # "green":I
    .end local v15    # "red":I
    :cond_1
    long-to-double v0, v4

    move-wide/from16 v18, v0

    long-to-double v0, v10

    move-wide/from16 v20, v0

    div-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->round(D)J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v2, v0

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 172
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "{ColorGroup. min_red: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->min_red:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", max_red: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->max_red:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", min_green: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->min_green:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", max_green: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->max_green:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", min_blue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->min_blue:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", max_blue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->max_blue:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", min_alpha: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->min_alpha:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", max_alpha: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->max_alpha:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", max_diff: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->max_diff:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", diff_total: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->diff_total:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
