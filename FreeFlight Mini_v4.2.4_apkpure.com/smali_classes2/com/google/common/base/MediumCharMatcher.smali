.class final Lcom/google/common/base/MediumCharMatcher;
.super Lcom/google/common/base/CharMatcher;
.source "MediumCharMatcher.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# static fields
.field private static final DESIRED_LOAD_FACTOR:D = 0.5

.field static final MAX_SIZE:I = 0x3ff


# instance fields
.field private final containsZero:Z

.field private final filter:J

.field private final table:[C


# direct methods
.method private constructor <init>([CJZLjava/lang/String;)V
    .locals 0
    .param p1, "table"    # [C
    .param p2, "filter"    # J
    .param p4, "containsZero"    # Z
    .param p5, "description"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p5}, Lcom/google/common/base/CharMatcher;-><init>(Ljava/lang/String;)V

    .line 38
    iput-object p1, p0, Lcom/google/common/base/MediumCharMatcher;->table:[C

    .line 39
    iput-wide p2, p0, Lcom/google/common/base/MediumCharMatcher;->filter:J

    .line 40
    iput-boolean p4, p0, Lcom/google/common/base/MediumCharMatcher;->containsZero:Z

    .line 41
    return-void
.end method

.method private checkFilter(I)Z
    .locals 4
    .param p1, "c"    # I

    .prologue
    const-wide/16 v2, 0x1

    .line 44
    iget-wide v0, p0, Lcom/google/common/base/MediumCharMatcher;->filter:J

    shr-long/2addr v0, p1

    and-long/2addr v0, v2

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static chooseTableSize(I)I
    .locals 6
    .param p0, "setSize"    # I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 60
    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    .line 61
    const/4 v0, 0x2

    .line 69
    :cond_0
    return v0

    .line 65
    :cond_1
    add-int/lit8 v1, p0, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    shl-int/lit8 v0, v1, 0x1

    .line 66
    .local v0, "tableSize":I
    :goto_0
    int-to-double v2, v0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v2, v4

    int-to-double v4, p0

    cmpg-double v1, v2, v4

    if-gez v1, :cond_0

    .line 67
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static from([CLjava/lang/String;)Lcom/google/common/base/CharMatcher;
    .locals 18
    .param p0, "chars"    # [C
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 82
    const-wide/16 v4, 0x0

    .line 83
    .local v4, "filter":J
    move-object/from16 v0, p0

    array-length v14, v0

    .line 84
    .local v14, "size":I
    const/4 v2, 0x0

    aget-char v2, p0, v2

    if-nez v2, :cond_0

    const/4 v6, 0x1

    .line 86
    .local v6, "containsZero":Z
    :goto_0
    move-object/from16 v8, p0

    .local v8, "arr$":[C
    array-length v12, v8

    .local v12, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_1
    if-ge v10, v12, :cond_1

    aget-char v9, v8, v10

    .line 87
    .local v9, "c":C
    const-wide/16 v16, 0x1

    shl-long v16, v16, v9

    or-long v4, v4, v16

    .line 86
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 84
    .end local v6    # "containsZero":Z
    .end local v8    # "arr$":[C
    .end local v9    # "c":C
    .end local v10    # "i$":I
    .end local v12    # "len$":I
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 90
    .restart local v6    # "containsZero":Z
    .restart local v8    # "arr$":[C
    .restart local v10    # "i$":I
    .restart local v12    # "len$":I
    :cond_1
    invoke-static {v14}, Lcom/google/common/base/MediumCharMatcher;->chooseTableSize(I)I

    move-result v2

    new-array v3, v2, [C

    .line 91
    .local v3, "table":[C
    array-length v2, v3

    add-int/lit8 v13, v2, -0x1

    .line 92
    .local v13, "mask":I
    move-object/from16 v8, p0

    array-length v12, v8

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v12, :cond_3

    aget-char v9, v8, v10

    .line 93
    .restart local v9    # "c":C
    and-int v11, v9, v13

    .line 96
    .local v11, "index":I
    :goto_3
    aget-char v2, v3, v11

    if-nez v2, :cond_2

    .line 97
    aput-char v9, v3, v11

    .line 92
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 101
    :cond_2
    add-int/lit8 v2, v11, 0x1

    and-int v11, v2, v13

    goto :goto_3

    .line 104
    .end local v9    # "c":C
    .end local v11    # "index":I
    :cond_3
    new-instance v2, Lcom/google/common/base/MediumCharMatcher;

    move-object/from16 v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/google/common/base/MediumCharMatcher;-><init>([CJZLjava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method public matches(C)Z
    .locals 5
    .param p1, "c"    # C

    .prologue
    const/4 v3, 0x0

    .line 109
    if-nez p1, :cond_1

    .line 110
    iget-boolean v3, p0, Lcom/google/common/base/MediumCharMatcher;->containsZero:Z

    .line 131
    :cond_0
    :goto_0
    return v3

    .line 112
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/common/base/MediumCharMatcher;->checkFilter(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 115
    iget-object v4, p0, Lcom/google/common/base/MediumCharMatcher;->table:[C

    array-length v4, v4

    add-int/lit8 v1, v4, -0x1

    .line 116
    .local v1, "mask":I
    and-int v2, p1, v1

    .line 117
    .local v2, "startingIndex":I
    move v0, v2

    .line 120
    .local v0, "index":I
    :cond_2
    iget-object v4, p0, Lcom/google/common/base/MediumCharMatcher;->table:[C

    aget-char v4, v4, v0

    if-eqz v4, :cond_0

    .line 123
    iget-object v4, p0, Lcom/google/common/base/MediumCharMatcher;->table:[C

    aget-char v4, v4, v0

    if-ne v4, p1, :cond_3

    .line 124
    const/4 v3, 0x1

    goto :goto_0

    .line 127
    :cond_3
    add-int/lit8 v4, v0, 0x1

    and-int v0, v4, v1

    .line 130
    if-ne v0, v2, :cond_2

    goto :goto_0
.end method

.method public precomputed()Lcom/google/common/base/CharMatcher;
    .locals 0

    .prologue
    .line 77
    return-object p0
.end method
