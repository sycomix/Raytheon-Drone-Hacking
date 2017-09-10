.class final Lcom/google/common/base/SmallCharMatcher;
.super Lcom/google/common/base/CharMatcher;
.source "SmallCharMatcher.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# static fields
.field static final MAX_SIZE:I = 0x3f

.field static final MAX_TABLE_SIZE:I = 0x80


# instance fields
.field private final containsZero:Z

.field final filter:J

.field private final reprobe:Z

.field private final table:[C


# direct methods
.method private constructor <init>([CJZZLjava/lang/String;)V
    .locals 0
    .param p1, "table"    # [C
    .param p2, "filter"    # J
    .param p4, "containsZero"    # Z
    .param p5, "reprobe"    # Z
    .param p6, "description"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0, p6}, Lcom/google/common/base/CharMatcher;-><init>(Ljava/lang/String;)V

    .line 40
    iput-object p1, p0, Lcom/google/common/base/SmallCharMatcher;->table:[C

    .line 41
    iput-wide p2, p0, Lcom/google/common/base/SmallCharMatcher;->filter:J

    .line 42
    iput-boolean p4, p0, Lcom/google/common/base/SmallCharMatcher;->containsZero:Z

    .line 43
    iput-boolean p5, p0, Lcom/google/common/base/SmallCharMatcher;->reprobe:Z

    .line 44
    return-void
.end method

.method static buildTable(I[CZ)[C
    .locals 5
    .param p0, "modulus"    # I
    .param p1, "allChars"    # [C
    .param p2, "reprobe"    # Z
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 57
    new-array v3, p0, [C

    .line 58
    .local v3, "table":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, p1

    if-ge v1, v4, :cond_1

    .line 59
    aget-char v0, p1, v1

    .line 60
    .local v0, "c":C
    rem-int v2, v0, p0

    .line 61
    .local v2, "index":I
    if-gez v2, :cond_0

    .line 62
    add-int/2addr v2, p0

    .line 64
    :cond_0
    aget-char v4, v3, v2

    if-eqz v4, :cond_2

    if-nez p2, :cond_2

    .line 65
    const/4 v3, 0x0

    .line 73
    .end local v0    # "c":C
    .end local v2    # "index":I
    .end local v3    # "table":[C
    :cond_1
    return-object v3

    .line 66
    .restart local v0    # "c":C
    .restart local v2    # "index":I
    .restart local v3    # "table":[C
    :cond_2
    if-eqz p2, :cond_3

    .line 67
    :goto_1
    aget-char v4, v3, v2

    if-eqz v4, :cond_3

    .line 68
    add-int/lit8 v4, v2, 0x1

    rem-int v2, v4, p0

    goto :goto_1

    .line 71
    :cond_3
    aput-char v0, v3, v2

    .line 58
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private checkFilter(I)Z
    .locals 4
    .param p1, "c"    # I

    .prologue
    const-wide/16 v2, 0x1

    .line 47
    iget-wide v0, p0, Lcom/google/common/base/SmallCharMatcher;->filter:J

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

.method static from([CLjava/lang/String;)Lcom/google/common/base/CharMatcher;
    .locals 18
    .param p0, "chars"    # [C
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 77
    const-wide/16 v4, 0x0

    .line 78
    .local v4, "filter":J
    move-object/from16 v0, p0

    array-length v14, v0

    .line 79
    .local v14, "size":I
    const/4 v6, 0x0

    .line 80
    .local v6, "containsZero":Z
    const/4 v7, 0x0

    .line 81
    .local v7, "reprobe":Z
    const/4 v2, 0x0

    aget-char v2, p0, v2

    if-nez v2, :cond_0

    const/4 v6, 0x1

    .line 84
    :goto_0
    move-object/from16 v9, p0

    .local v9, "arr$":[C
    array-length v13, v9

    .local v13, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_1
    if-ge v12, v13, :cond_1

    aget-char v10, v9, v12

    .line 85
    .local v10, "c":C
    const-wide/16 v16, 0x1

    shl-long v16, v16, v10

    or-long v4, v4, v16

    .line 84
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 81
    .end local v9    # "arr$":[C
    .end local v10    # "c":C
    .end local v12    # "i$":I
    .end local v13    # "len$":I
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 87
    .restart local v9    # "arr$":[C
    .restart local v12    # "i$":I
    .restart local v13    # "len$":I
    :cond_1
    const/4 v3, 0x0

    .line 88
    .local v3, "table":[C
    move v11, v14

    .local v11, "i":I
    :goto_2
    const/16 v2, 0x80

    if-ge v11, v2, :cond_2

    .line 89
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-static {v11, v0, v2}, Lcom/google/common/base/SmallCharMatcher;->buildTable(I[CZ)[C

    move-result-object v3

    .line 90
    if-eqz v3, :cond_4

    .line 95
    :cond_2
    if-nez v3, :cond_3

    .line 96
    const/16 v2, 0x80

    const/4 v8, 0x1

    move-object/from16 v0, p0

    invoke-static {v2, v0, v8}, Lcom/google/common/base/SmallCharMatcher;->buildTable(I[CZ)[C

    move-result-object v3

    .line 97
    const/4 v7, 0x1

    .line 99
    :cond_3
    new-instance v2, Lcom/google/common/base/SmallCharMatcher;

    move-object/from16 v8, p1

    invoke-direct/range {v2 .. v8}, Lcom/google/common/base/SmallCharMatcher;-><init>([CJZZLjava/lang/String;)V

    return-object v2

    .line 88
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_2
.end method


# virtual methods
.method public matches(C)Z
    .locals 4
    .param p1, "c"    # C

    .prologue
    const/4 v1, 0x0

    .line 104
    if-nez p1, :cond_1

    .line 105
    iget-boolean v1, p0, Lcom/google/common/base/SmallCharMatcher;->containsZero:Z

    .line 124
    :cond_0
    :goto_0
    return v1

    .line 107
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/common/base/SmallCharMatcher;->checkFilter(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    iget-object v2, p0, Lcom/google/common/base/SmallCharMatcher;->table:[C

    array-length v2, v2

    rem-int v0, p1, v2

    .line 111
    .local v0, "index":I
    if-gez v0, :cond_2

    .line 112
    iget-object v2, p0, Lcom/google/common/base/SmallCharMatcher;->table:[C

    array-length v2, v2

    add-int/2addr v0, v2

    .line 116
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/google/common/base/SmallCharMatcher;->table:[C

    aget-char v2, v2, v0

    if-eqz v2, :cond_0

    .line 118
    iget-object v2, p0, Lcom/google/common/base/SmallCharMatcher;->table:[C

    aget-char v2, v2, v0

    if-ne v2, p1, :cond_3

    .line 119
    const/4 v1, 0x1

    goto :goto_0

    .line 120
    :cond_3
    iget-boolean v2, p0, Lcom/google/common/base/SmallCharMatcher;->reprobe:Z

    if-eqz v2, :cond_0

    .line 122
    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/google/common/base/SmallCharMatcher;->table:[C

    array-length v3, v3

    rem-int v0, v2, v3

    goto :goto_1
.end method

.method public precomputed()Lcom/google/common/base/CharMatcher;
    .locals 0

    .prologue
    .line 52
    return-object p0
.end method
