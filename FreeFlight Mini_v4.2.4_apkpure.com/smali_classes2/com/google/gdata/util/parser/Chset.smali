.class public Lcom/google/gdata/util/parser/Chset;
.super Lcom/google/gdata/util/parser/Parser;
.source "Chset.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/util/parser/Chset$Range;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/util/parser/Parser",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field public static final ALNUM:Lcom/google/gdata/util/parser/Chset;

.field public static final ALPHA:Lcom/google/gdata/util/parser/Chset;

.field public static final ANYCHAR:Lcom/google/gdata/util/parser/Chset;

.field public static final ASCII:Lcom/google/gdata/util/parser/Chset;

.field public static final DIGIT:Lcom/google/gdata/util/parser/Chset;

.field public static final LOWER:Lcom/google/gdata/util/parser/Chset;

.field private static final MAX_ASCII_CHAR:C = '\u007f'

.field protected static final MAX_CHAR:C = '\uffff'

.field protected static final MIN_CHAR:C

.field public static final NOTHING:Lcom/google/gdata/util/parser/Chset;

.field public static final UPPER:Lcom/google/gdata/util/parser/Chset;

.field public static final WHITESPACE:Lcom/google/gdata/util/parser/Chset;

.field public static final XDIGIT:Lcom/google/gdata/util/parser/Chset;


# instance fields
.field private asciiSet:Ljava/util/BitSet;

.field private ranges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/gdata/util/parser/Chset$Range;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 50
    new-instance v0, Lcom/google/gdata/util/parser/Chset;

    const v1, 0xffff

    invoke-direct {v0, v2, v1}, Lcom/google/gdata/util/parser/Chset;-><init>(CC)V

    sput-object v0, Lcom/google/gdata/util/parser/Chset;->ANYCHAR:Lcom/google/gdata/util/parser/Chset;

    .line 51
    new-instance v0, Lcom/google/gdata/util/parser/Chset;

    invoke-direct {v0}, Lcom/google/gdata/util/parser/Chset;-><init>()V

    sput-object v0, Lcom/google/gdata/util/parser/Chset;->NOTHING:Lcom/google/gdata/util/parser/Chset;

    .line 52
    new-instance v0, Lcom/google/gdata/util/parser/Chset;

    const-string v1, "a-zA-Z0-9"

    invoke-direct {v0, v1}, Lcom/google/gdata/util/parser/Chset;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/util/parser/Chset;->ALNUM:Lcom/google/gdata/util/parser/Chset;

    .line 53
    new-instance v0, Lcom/google/gdata/util/parser/Chset;

    const-string v1, "a-zA-Z"

    invoke-direct {v0, v1}, Lcom/google/gdata/util/parser/Chset;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/util/parser/Chset;->ALPHA:Lcom/google/gdata/util/parser/Chset;

    .line 54
    new-instance v0, Lcom/google/gdata/util/parser/Chset;

    const-string v1, "0-9"

    invoke-direct {v0, v1}, Lcom/google/gdata/util/parser/Chset;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/util/parser/Chset;->DIGIT:Lcom/google/gdata/util/parser/Chset;

    .line 55
    new-instance v0, Lcom/google/gdata/util/parser/Chset;

    const-string v1, "0-9a-fA-F"

    invoke-direct {v0, v1}, Lcom/google/gdata/util/parser/Chset;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/util/parser/Chset;->XDIGIT:Lcom/google/gdata/util/parser/Chset;

    .line 56
    new-instance v0, Lcom/google/gdata/util/parser/Chset;

    const-string v1, "a-z"

    invoke-direct {v0, v1}, Lcom/google/gdata/util/parser/Chset;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/util/parser/Chset;->LOWER:Lcom/google/gdata/util/parser/Chset;

    .line 57
    new-instance v0, Lcom/google/gdata/util/parser/Chset;

    const-string v1, "A-Z"

    invoke-direct {v0, v1}, Lcom/google/gdata/util/parser/Chset;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/util/parser/Chset;->UPPER:Lcom/google/gdata/util/parser/Chset;

    .line 58
    new-instance v0, Lcom/google/gdata/util/parser/Chset;

    const-string v1, " \t\r\n\u000c"

    invoke-direct {v0, v1}, Lcom/google/gdata/util/parser/Chset;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/util/parser/Chset;->WHITESPACE:Lcom/google/gdata/util/parser/Chset;

    .line 59
    new-instance v0, Lcom/google/gdata/util/parser/Chset;

    const/16 v1, 0x7f

    invoke-direct {v0, v2, v1}, Lcom/google/gdata/util/parser/Chset;-><init>(CC)V

    sput-object v0, Lcom/google/gdata/util/parser/Chset;->ASCII:Lcom/google/gdata/util/parser/Chset;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/google/gdata/util/parser/Parser;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/gdata/util/parser/Chset;->ranges:Ljava/util/ArrayList;

    .line 68
    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/google/gdata/util/parser/Chset;->asciiSet:Ljava/util/BitSet;

    .line 74
    return-void
.end method

.method public constructor <init>(C)V
    .locals 0
    .param p1, "ch"    # C

    .prologue
    .line 82
    invoke-direct {p0, p1, p1}, Lcom/google/gdata/util/parser/Chset;-><init>(CC)V

    .line 83
    return-void
.end method

.method public constructor <init>(CC)V
    .locals 2
    .param p1, "min"    # C
    .param p2, "max"    # C

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/google/gdata/util/parser/Parser;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/gdata/util/parser/Chset;->ranges:Ljava/util/ArrayList;

    .line 68
    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/google/gdata/util/parser/Chset;->asciiSet:Ljava/util/BitSet;

    .line 93
    iget-object v0, p0, Lcom/google/gdata/util/parser/Chset;->ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/gdata/util/parser/Chset$Range;

    invoke-direct {v1, p1, p2}, Lcom/google/gdata/util/parser/Chset$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    invoke-direct {p0}, Lcom/google/gdata/util/parser/Chset;->refreshAsciiSet()V

    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 7
    .param p1, "spec"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x2d

    .line 104
    invoke-direct {p0}, Lcom/google/gdata/util/parser/Parser;-><init>()V

    .line 61
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/gdata/util/parser/Chset;->ranges:Ljava/util/ArrayList;

    .line 68
    new-instance v4, Ljava/util/BitSet;

    const/16 v5, 0x80

    invoke-direct {v4, v5}, Ljava/util/BitSet;-><init>(I)V

    iput-object v4, p0, Lcom/google/gdata/util/parser/Chset;->asciiSet:Ljava/util/BitSet;

    .line 105
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 106
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 107
    .local v3, "s":C
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 108
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 109
    .local v2, "n":C
    if-ne v2, v6, :cond_2

    .line 110
    add-int/lit8 v4, v1, 0x2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 111
    add-int/lit8 v4, v1, 0x2

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 112
    .local v0, "e":C
    new-instance v4, Lcom/google/gdata/util/parser/Chset$Range;

    invoke-direct {v4, v3, v0}, Lcom/google/gdata/util/parser/Chset$Range;-><init>(II)V

    invoke-direct {p0, v4}, Lcom/google/gdata/util/parser/Chset;->set(Lcom/google/gdata/util/parser/Chset$Range;)V

    .line 113
    add-int/lit8 v1, v1, 0x3

    .line 114
    goto :goto_0

    .line 116
    .end local v0    # "e":C
    :cond_0
    new-instance v4, Lcom/google/gdata/util/parser/Chset$Range;

    invoke-direct {v4, v3, v3}, Lcom/google/gdata/util/parser/Chset$Range;-><init>(II)V

    invoke-direct {p0, v4}, Lcom/google/gdata/util/parser/Chset;->set(Lcom/google/gdata/util/parser/Chset$Range;)V

    .line 117
    new-instance v4, Lcom/google/gdata/util/parser/Chset$Range;

    invoke-direct {v4, v6, v6}, Lcom/google/gdata/util/parser/Chset$Range;-><init>(II)V

    invoke-direct {p0, v4}, Lcom/google/gdata/util/parser/Chset;->set(Lcom/google/gdata/util/parser/Chset$Range;)V

    .line 125
    .end local v2    # "n":C
    .end local v3    # "s":C
    :cond_1
    return-void

    .line 122
    .restart local v3    # "s":C
    :cond_2
    new-instance v4, Lcom/google/gdata/util/parser/Chset$Range;

    invoke-direct {v4, v3, v3}, Lcom/google/gdata/util/parser/Chset$Range;-><init>(II)V

    invoke-direct {p0, v4}, Lcom/google/gdata/util/parser/Chset;->set(Lcom/google/gdata/util/parser/Chset$Range;)V

    .line 123
    add-int/lit8 v1, v1, 0x1

    .line 124
    goto :goto_0
.end method

.method private clear(Lcom/google/gdata/util/parser/Chset$Range;)V
    .locals 5
    .param p1, "r"    # Lcom/google/gdata/util/parser/Chset$Range;

    .prologue
    .line 248
    iget-object v3, p0, Lcom/google/gdata/util/parser/Chset;->ranges:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 276
    :goto_0
    return-void

    .line 252
    :cond_0
    iget v3, p1, Lcom/google/gdata/util/parser/Chset$Range;->first:I

    invoke-direct {p0, v3}, Lcom/google/gdata/util/parser/Chset;->find(I)I

    move-result v1

    .line 253
    .local v1, "pos":I
    if-lez v1, :cond_2

    .line 254
    iget-object v3, p0, Lcom/google/gdata/util/parser/Chset;->ranges:Ljava/util/ArrayList;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gdata/util/parser/Chset$Range;

    .line 255
    .local v2, "prev":Lcom/google/gdata/util/parser/Chset$Range;
    iget v3, p1, Lcom/google/gdata/util/parser/Chset$Range;->first:I

    invoke-virtual {v2, v3}, Lcom/google/gdata/util/parser/Chset$Range;->includes(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 256
    iget v3, v2, Lcom/google/gdata/util/parser/Chset$Range;->last:I

    iget v4, p1, Lcom/google/gdata/util/parser/Chset$Range;->last:I

    if-le v3, v4, :cond_1

    .line 257
    new-instance v0, Lcom/google/gdata/util/parser/Chset$Range;

    iget v3, p1, Lcom/google/gdata/util/parser/Chset$Range;->last:I

    add-int/lit8 v3, v3, 0x1

    iget v4, v2, Lcom/google/gdata/util/parser/Chset$Range;->last:I

    invoke-direct {v0, v3, v4}, Lcom/google/gdata/util/parser/Chset$Range;-><init>(II)V

    .line 258
    .local v0, "n":Lcom/google/gdata/util/parser/Chset$Range;
    iget v3, p1, Lcom/google/gdata/util/parser/Chset$Range;->first:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/google/gdata/util/parser/Chset$Range;->last:I

    .line 259
    iget-object v3, p0, Lcom/google/gdata/util/parser/Chset;->ranges:Ljava/util/ArrayList;

    invoke-virtual {v3, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 260
    invoke-direct {p0}, Lcom/google/gdata/util/parser/Chset;->refreshAsciiSet()V

    goto :goto_0

    .line 263
    .end local v0    # "n":Lcom/google/gdata/util/parser/Chset$Range;
    :cond_1
    iget v3, p1, Lcom/google/gdata/util/parser/Chset$Range;->first:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/google/gdata/util/parser/Chset$Range;->last:I

    .line 268
    .end local v2    # "prev":Lcom/google/gdata/util/parser/Chset$Range;
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/google/gdata/util/parser/Chset;->ranges:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    iget-object v3, p0, Lcom/google/gdata/util/parser/Chset;->ranges:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/gdata/util/parser/Chset$Range;

    invoke-virtual {p1, v3}, Lcom/google/gdata/util/parser/Chset$Range;->includes(Lcom/google/gdata/util/parser/Chset$Range;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 269
    iget-object v3, p0, Lcom/google/gdata/util/parser/Chset;->ranges:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 271
    :cond_3
    iget-object v3, p0, Lcom/google/gdata/util/parser/Chset;->ranges:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    iget-object v3, p0, Lcom/google/gdata/util/parser/Chset;->ranges:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/gdata/util/parser/Chset$Range;

    iget v4, p1, Lcom/google/gdata/util/parser/Chset$Range;->last:I

    invoke-virtual {v3, v4}, Lcom/google/gdata/util/parser/Chset$Range;->includes(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 272
    iget-object v3, p0, Lcom/google/gdata/util/parser/Chset;->ranges:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/gdata/util/parser/Chset$Range;

    iget v4, p1, Lcom/google/gdata/util/parser/Chset$Range;->last:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/google/gdata/util/parser/Chset$Range;->first:I

    .line 275
    :cond_4
    invoke-direct {p0}, Lcom/google/gdata/util/parser/Chset;->refreshAsciiSet()V

    goto/16 :goto_0
.end method

.method public static difference(Lcom/google/gdata/util/parser/Chset;Lcom/google/gdata/util/parser/Chset;)Lcom/google/gdata/util/parser/Chset;
    .locals 4
    .param p0, "left"    # Lcom/google/gdata/util/parser/Chset;
    .param p1, "right"    # Lcom/google/gdata/util/parser/Chset;

    .prologue
    .line 396
    invoke-virtual {p0}, Lcom/google/gdata/util/parser/Chset;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/util/parser/Chset;

    .line 397
    .local v1, "n":Lcom/google/gdata/util/parser/Chset;
    iget-object v3, p1, Lcom/google/gdata/util/parser/Chset;->ranges:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gdata/util/parser/Chset$Range;

    .line 398
    .local v2, "r":Lcom/google/gdata/util/parser/Chset$Range;
    invoke-direct {v1, v2}, Lcom/google/gdata/util/parser/Chset;->clear(Lcom/google/gdata/util/parser/Chset$Range;)V

    goto :goto_0

    .line 400
    .end local v2    # "r":Lcom/google/gdata/util/parser/Chset$Range;
    :cond_0
    return-object v1
.end method

.method private find(I)I
    .locals 5
    .param p1, "first"    # I

    .prologue
    .line 311
    const/4 v3, 0x0

    .line 312
    .local v3, "s":I
    iget-object v4, p0, Lcom/google/gdata/util/parser/Chset;->ranges:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .line 314
    .local v0, "e":I
    :goto_0
    if-gt v3, v0, :cond_1

    .line 315
    add-int v4, v3, v0

    div-int/lit8 v1, v4, 0x2

    .line 316
    .local v1, "m":I
    iget-object v4, p0, Lcom/google/gdata/util/parser/Chset;->ranges:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gdata/util/parser/Chset$Range;

    .line 318
    .local v2, "r":Lcom/google/gdata/util/parser/Chset$Range;
    iget v4, v2, Lcom/google/gdata/util/parser/Chset$Range;->first:I

    if-ge v4, p1, :cond_0

    .line 319
    add-int/lit8 v3, v1, 0x1

    goto :goto_0

    .line 320
    :cond_0
    iget v4, v2, Lcom/google/gdata/util/parser/Chset$Range;->first:I

    if-le v4, p1, :cond_2

    .line 321
    add-int/lit8 v0, v1, -0x1

    goto :goto_0

    .end local v1    # "m":I
    .end local v2    # "r":Lcom/google/gdata/util/parser/Chset$Range;
    :cond_1
    move v1, v3

    .line 327
    :cond_2
    return v1
.end method

.method public static intersection(Lcom/google/gdata/util/parser/Chset;Lcom/google/gdata/util/parser/Chset;)Lcom/google/gdata/util/parser/Chset;
    .locals 1
    .param p0, "left"    # Lcom/google/gdata/util/parser/Chset;
    .param p1, "right"    # Lcom/google/gdata/util/parser/Chset;

    .prologue
    .line 414
    invoke-static {p1}, Lcom/google/gdata/util/parser/Chset;->not(Lcom/google/gdata/util/parser/Chset;)Lcom/google/gdata/util/parser/Chset;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/gdata/util/parser/Chset;->difference(Lcom/google/gdata/util/parser/Chset;Lcom/google/gdata/util/parser/Chset;)Lcom/google/gdata/util/parser/Chset;

    move-result-object v0

    return-object v0
.end method

.method private merge(ILcom/google/gdata/util/parser/Chset$Range;)V
    .locals 2
    .param p1, "pos"    # I
    .param p2, "r"    # Lcom/google/gdata/util/parser/Chset$Range;

    .prologue
    .line 341
    iget-object v1, p0, Lcom/google/gdata/util/parser/Chset;->ranges:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/util/parser/Chset$Range;

    .line 342
    .local v0, "t":Lcom/google/gdata/util/parser/Chset$Range;
    invoke-virtual {v0, p2}, Lcom/google/gdata/util/parser/Chset$Range;->merge(Lcom/google/gdata/util/parser/Chset$Range;)V

    .line 344
    add-int/lit8 p1, p1, 0x1

    .line 345
    :goto_0
    iget-object v1, p0, Lcom/google/gdata/util/parser/Chset;->ranges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lcom/google/gdata/util/parser/Chset;->ranges:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/util/parser/Chset$Range;

    invoke-virtual {v0, v1}, Lcom/google/gdata/util/parser/Chset$Range;->mergeable(Lcom/google/gdata/util/parser/Chset$Range;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 346
    iget-object v1, p0, Lcom/google/gdata/util/parser/Chset;->ranges:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/util/parser/Chset$Range;

    invoke-virtual {v0, v1}, Lcom/google/gdata/util/parser/Chset$Range;->merge(Lcom/google/gdata/util/parser/Chset$Range;)V

    .line 347
    iget-object v1, p0, Lcom/google/gdata/util/parser/Chset;->ranges:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 349
    :cond_0
    return-void
.end method

.method public static not(Lcom/google/gdata/util/parser/Chset;)Lcom/google/gdata/util/parser/Chset;
    .locals 1
    .param p0, "subject"    # Lcom/google/gdata/util/parser/Chset;

    .prologue
    .line 362
    sget-object v0, Lcom/google/gdata/util/parser/Chset;->ANYCHAR:Lcom/google/gdata/util/parser/Chset;

    invoke-static {v0, p0}, Lcom/google/gdata/util/parser/Chset;->difference(Lcom/google/gdata/util/parser/Chset;Lcom/google/gdata/util/parser/Chset;)Lcom/google/gdata/util/parser/Chset;

    move-result-object v0

    return-object v0
.end method

.method private refreshAsciiSet()V
    .locals 2

    .prologue
    .line 283
    iget-object v1, p0, Lcom/google/gdata/util/parser/Chset;->asciiSet:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 284
    const/4 v0, 0x0

    .local v0, "ch":C
    :goto_0
    const/16 v1, 0x7f

    if-gt v0, v1, :cond_1

    .line 285
    invoke-virtual {p0, v0}, Lcom/google/gdata/util/parser/Chset;->testRanges(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 286
    iget-object v1, p0, Lcom/google/gdata/util/parser/Chset;->asciiSet:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 284
    :cond_0
    add-int/lit8 v1, v0, 0x1

    int-to-char v0, v1

    goto :goto_0

    .line 289
    :cond_1
    return-void
.end method

.method private set(Lcom/google/gdata/util/parser/Chset$Range;)V
    .locals 3
    .param p1, "r"    # Lcom/google/gdata/util/parser/Chset$Range;

    .prologue
    .line 212
    iget-object v1, p0, Lcom/google/gdata/util/parser/Chset;->ranges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 213
    iget-object v1, p0, Lcom/google/gdata/util/parser/Chset;->ranges:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    invoke-direct {p0}, Lcom/google/gdata/util/parser/Chset;->refreshAsciiSet()V

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    iget v1, p1, Lcom/google/gdata/util/parser/Chset$Range;->first:I

    invoke-direct {p0, v1}, Lcom/google/gdata/util/parser/Chset;->find(I)I

    move-result v0

    .line 219
    .local v0, "pos":I
    iget-object v1, p0, Lcom/google/gdata/util/parser/Chset;->ranges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_2

    iget-object v1, p0, Lcom/google/gdata/util/parser/Chset;->ranges:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/util/parser/Chset$Range;

    invoke-virtual {v1, p1}, Lcom/google/gdata/util/parser/Chset$Range;->includes(Lcom/google/gdata/util/parser/Chset$Range;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/google/gdata/util/parser/Chset;->ranges:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/util/parser/Chset$Range;

    invoke-virtual {v1, p1}, Lcom/google/gdata/util/parser/Chset$Range;->includes(Lcom/google/gdata/util/parser/Chset$Range;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 223
    :cond_3
    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/google/gdata/util/parser/Chset;->ranges:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/util/parser/Chset$Range;

    invoke-virtual {v1, p1}, Lcom/google/gdata/util/parser/Chset$Range;->mergeable(Lcom/google/gdata/util/parser/Chset$Range;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 224
    add-int/lit8 v1, v0, -0x1

    invoke-direct {p0, v1, p1}, Lcom/google/gdata/util/parser/Chset;->merge(ILcom/google/gdata/util/parser/Chset$Range;)V

    .line 230
    :goto_1
    invoke-direct {p0}, Lcom/google/gdata/util/parser/Chset;->refreshAsciiSet()V

    goto :goto_0

    .line 225
    :cond_4
    iget-object v1, p0, Lcom/google/gdata/util/parser/Chset;->ranges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_5

    iget-object v1, p0, Lcom/google/gdata/util/parser/Chset;->ranges:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/util/parser/Chset$Range;

    invoke-virtual {v1, p1}, Lcom/google/gdata/util/parser/Chset$Range;->mergeable(Lcom/google/gdata/util/parser/Chset$Range;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 226
    invoke-direct {p0, v0, p1}, Lcom/google/gdata/util/parser/Chset;->merge(ILcom/google/gdata/util/parser/Chset$Range;)V

    goto :goto_1

    .line 228
    :cond_5
    iget-object v1, p0, Lcom/google/gdata/util/parser/Chset;->ranges:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method public static union(Lcom/google/gdata/util/parser/Chset;Lcom/google/gdata/util/parser/Chset;)Lcom/google/gdata/util/parser/Chset;
    .locals 4
    .param p0, "left"    # Lcom/google/gdata/util/parser/Chset;
    .param p1, "right"    # Lcom/google/gdata/util/parser/Chset;

    .prologue
    .line 377
    invoke-virtual {p0}, Lcom/google/gdata/util/parser/Chset;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/util/parser/Chset;

    .line 378
    .local v1, "n":Lcom/google/gdata/util/parser/Chset;
    iget-object v3, p1, Lcom/google/gdata/util/parser/Chset;->ranges:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gdata/util/parser/Chset$Range;

    .line 379
    .local v2, "r":Lcom/google/gdata/util/parser/Chset$Range;
    invoke-direct {v1, v2}, Lcom/google/gdata/util/parser/Chset;->set(Lcom/google/gdata/util/parser/Chset$Range;)V

    goto :goto_0

    .line 381
    .end local v2    # "r":Lcom/google/gdata/util/parser/Chset$Range;
    :cond_0
    return-object v1
.end method

.method public static xor(Lcom/google/gdata/util/parser/Chset;Lcom/google/gdata/util/parser/Chset;)Lcom/google/gdata/util/parser/Chset;
    .locals 2
    .param p0, "left"    # Lcom/google/gdata/util/parser/Chset;
    .param p1, "right"    # Lcom/google/gdata/util/parser/Chset;

    .prologue
    .line 429
    invoke-static {p0, p1}, Lcom/google/gdata/util/parser/Chset;->difference(Lcom/google/gdata/util/parser/Chset;Lcom/google/gdata/util/parser/Chset;)Lcom/google/gdata/util/parser/Chset;

    move-result-object v0

    invoke-static {p1, p0}, Lcom/google/gdata/util/parser/Chset;->difference(Lcom/google/gdata/util/parser/Chset;Lcom/google/gdata/util/parser/Chset;)Lcom/google/gdata/util/parser/Chset;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/gdata/util/parser/Chset;->union(Lcom/google/gdata/util/parser/Chset;Lcom/google/gdata/util/parser/Chset;)Lcom/google/gdata/util/parser/Chset;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected clear(CC)V
    .locals 1
    .param p1, "min"    # C
    .param p2, "max"    # C

    .prologue
    .line 237
    new-instance v0, Lcom/google/gdata/util/parser/Chset$Range;

    invoke-direct {v0, p1, p2}, Lcom/google/gdata/util/parser/Chset$Range;-><init>(II)V

    invoke-direct {p0, v0}, Lcom/google/gdata/util/parser/Chset;->clear(Lcom/google/gdata/util/parser/Chset$Range;)V

    .line 238
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 7

    .prologue
    .line 132
    new-instance v1, Lcom/google/gdata/util/parser/Chset;

    invoke-direct {v1}, Lcom/google/gdata/util/parser/Chset;-><init>()V

    .line 133
    .local v1, "n":Lcom/google/gdata/util/parser/Chset;
    iget-object v3, p0, Lcom/google/gdata/util/parser/Chset;->ranges:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gdata/util/parser/Chset$Range;

    .line 134
    .local v2, "r":Lcom/google/gdata/util/parser/Chset$Range;
    iget-object v3, v1, Lcom/google/gdata/util/parser/Chset;->ranges:Ljava/util/ArrayList;

    new-instance v4, Lcom/google/gdata/util/parser/Chset$Range;

    iget v5, v2, Lcom/google/gdata/util/parser/Chset$Range;->first:I

    iget v6, v2, Lcom/google/gdata/util/parser/Chset$Range;->last:I

    invoke-direct {v4, v5, v6}, Lcom/google/gdata/util/parser/Chset$Range;-><init>(II)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 136
    .end local v2    # "r":Lcom/google/gdata/util/parser/Chset$Range;
    :cond_0
    invoke-direct {v1}, Lcom/google/gdata/util/parser/Chset;->refreshAsciiSet()V

    .line 137
    return-object v1
.end method

.method public parse([CIILjava/lang/Object;)I
    .locals 1
    .param p1, "buf"    # [C
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "data"    # Ljava/lang/Object;

    .prologue
    .line 147
    if-ge p2, p3, :cond_0

    aget-char v0, p1, p2

    invoke-virtual {p0, v0}, Lcom/google/gdata/util/parser/Chset;->test(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    const/4 v0, 0x1

    .line 150
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method protected set(CC)V
    .locals 1
    .param p1, "min"    # C
    .param p2, "max"    # C

    .prologue
    .line 201
    new-instance v0, Lcom/google/gdata/util/parser/Chset$Range;

    invoke-direct {v0, p1, p2}, Lcom/google/gdata/util/parser/Chset$Range;-><init>(II)V

    invoke-direct {p0, v0}, Lcom/google/gdata/util/parser/Chset;->set(Lcom/google/gdata/util/parser/Chset$Range;)V

    .line 202
    return-void
.end method

.method protected size()I
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/google/gdata/util/parser/Chset;->ranges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public test(C)Z
    .locals 1
    .param p1, "ch"    # C

    .prologue
    .line 159
    const/16 v0, 0x7f

    if-gt p1, v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/google/gdata/util/parser/Chset;->asciiSet:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    .line 162
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/util/parser/Chset;->testRanges(C)Z

    move-result v0

    goto :goto_0
.end method

.method protected testRanges(C)Z
    .locals 6
    .param p1, "ch"    # C

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 172
    iget-object v2, p0, Lcom/google/gdata/util/parser/Chset;->ranges:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 174
    .local v1, "range_size":I
    if-nez v1, :cond_0

    move v2, v3

    .line 193
    :goto_0
    return v2

    .line 176
    :cond_0
    if-ne v1, v4, :cond_1

    .line 178
    iget-object v2, p0, Lcom/google/gdata/util/parser/Chset;->ranges:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gdata/util/parser/Chset$Range;

    invoke-virtual {v2, p1}, Lcom/google/gdata/util/parser/Chset$Range;->includes(I)Z

    move-result v2

    goto :goto_0

    .line 180
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/gdata/util/parser/Chset;->find(I)I

    move-result v0

    .line 187
    .local v0, "pos":I
    if-eq v0, v1, :cond_2

    iget-object v2, p0, Lcom/google/gdata/util/parser/Chset;->ranges:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gdata/util/parser/Chset$Range;

    invoke-virtual {v2, p1}, Lcom/google/gdata/util/parser/Chset$Range;->includes(I)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v4

    .line 188
    goto :goto_0

    .line 190
    :cond_2
    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/google/gdata/util/parser/Chset;->ranges:Ljava/util/ArrayList;

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gdata/util/parser/Chset$Range;

    invoke-virtual {v2, p1}, Lcom/google/gdata/util/parser/Chset$Range;->includes(I)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v4

    .line 191
    goto :goto_0

    :cond_3
    move v2, v3

    .line 193
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 434
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 435
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/gdata/util/parser/Chset;->ranges:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 436
    iget-object v3, p0, Lcom/google/gdata/util/parser/Chset;->ranges:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gdata/util/parser/Chset$Range;

    .line 437
    .local v2, "r":Lcom/google/gdata/util/parser/Chset$Range;
    if-lez v1, :cond_0

    .line 438
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 440
    :cond_0
    iget v3, v2, Lcom/google/gdata/util/parser/Chset$Range;->first:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 441
    const-string v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 442
    iget v3, v2, Lcom/google/gdata/util/parser/Chset$Range;->last:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 435
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 444
    .end local v2    # "r":Lcom/google/gdata/util/parser/Chset$Range;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
