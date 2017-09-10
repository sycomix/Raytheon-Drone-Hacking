.class Lcom/google/gdata/util/parser/Chset$Range;
.super Ljava/lang/Object;
.source "Chset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/util/parser/Chset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Range"
.end annotation


# instance fields
.field first:I

.field last:I


# direct methods
.method constructor <init>(II)V
    .locals 3
    .param p1, "first"    # I
    .param p2, "last"    # I

    .prologue
    .line 470
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 471
    if-le p1, p2, :cond_0

    .line 472
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "descending ranges not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 476
    :cond_0
    iput p1, p0, Lcom/google/gdata/util/parser/Chset$Range;->first:I

    .line 477
    iput p2, p0, Lcom/google/gdata/util/parser/Chset$Range;->last:I

    .line 478
    return-void
.end method


# virtual methods
.method includes(I)Z
    .locals 1
    .param p1, "ch"    # I

    .prologue
    .line 490
    iget v0, p0, Lcom/google/gdata/util/parser/Chset$Range;->first:I

    if-gt v0, p1, :cond_0

    iget v0, p0, Lcom/google/gdata/util/parser/Chset$Range;->last:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method includes(Lcom/google/gdata/util/parser/Chset$Range;)Z
    .locals 2
    .param p1, "r"    # Lcom/google/gdata/util/parser/Chset$Range;

    .prologue
    .line 502
    iget v0, p0, Lcom/google/gdata/util/parser/Chset$Range;->first:I

    iget v1, p1, Lcom/google/gdata/util/parser/Chset$Range;->first:I

    if-gt v0, v1, :cond_0

    iget v0, p1, Lcom/google/gdata/util/parser/Chset$Range;->last:I

    iget v1, p0, Lcom/google/gdata/util/parser/Chset$Range;->last:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method merge(Lcom/google/gdata/util/parser/Chset$Range;)V
    .locals 2
    .param p1, "r"    # Lcom/google/gdata/util/parser/Chset$Range;

    .prologue
    .line 533
    iget v0, p0, Lcom/google/gdata/util/parser/Chset$Range;->first:I

    iget v1, p1, Lcom/google/gdata/util/parser/Chset$Range;->first:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/google/gdata/util/parser/Chset$Range;->first:I

    .line 534
    iget v0, p0, Lcom/google/gdata/util/parser/Chset$Range;->last:I

    iget v1, p1, Lcom/google/gdata/util/parser/Chset$Range;->last:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/gdata/util/parser/Chset$Range;->last:I

    .line 535
    return-void
.end method

.method mergeable(Lcom/google/gdata/util/parser/Chset$Range;)Z
    .locals 4
    .param p1, "r"    # Lcom/google/gdata/util/parser/Chset$Range;

    .prologue
    .line 518
    iget v0, p0, Lcom/google/gdata/util/parser/Chset$Range;->last:I

    iget v1, p1, Lcom/google/gdata/util/parser/Chset$Range;->last:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/google/gdata/util/parser/Chset$Range;->first:I

    iget v2, p1, Lcom/google/gdata/util/parser/Chset$Range;->first:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p1, Lcom/google/gdata/util/parser/Chset$Range;->last:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p1, Lcom/google/gdata/util/parser/Chset$Range;->first:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/google/gdata/util/parser/Chset$Range;->last:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/google/gdata/util/parser/Chset$Range;->first:I

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
