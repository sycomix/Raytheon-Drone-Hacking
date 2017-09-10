.class public Lcom/google/gdata/util/parser/Repeat;
.super Lcom/google/gdata/util/parser/Parser;
.source "Repeat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/gdata/util/parser/Parser",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private max:I

.field private min:I

.field private subject:Lcom/google/gdata/util/parser/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/util/parser/Parser",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/gdata/util/parser/Parser;I)V
    .locals 1
    .param p2, "min"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/util/parser/Parser",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lcom/google/gdata/util/parser/Repeat;, "Lcom/google/gdata/util/parser/Repeat<TT;>;"
    .local p1, "subject":Lcom/google/gdata/util/parser/Parser;, "Lcom/google/gdata/util/parser/Parser<TT;>;"
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/google/gdata/util/parser/Repeat;-><init>(Lcom/google/gdata/util/parser/Parser;II)V

    .line 54
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/util/parser/Parser;II)V
    .locals 0
    .param p2, "min"    # I
    .param p3, "max"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/util/parser/Parser",
            "<TT;>;II)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "this":Lcom/google/gdata/util/parser/Repeat;, "Lcom/google/gdata/util/parser/Repeat<TT;>;"
    .local p1, "subject":Lcom/google/gdata/util/parser/Parser;, "Lcom/google/gdata/util/parser/Parser<TT;>;"
    invoke-direct {p0}, Lcom/google/gdata/util/parser/Parser;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/google/gdata/util/parser/Repeat;->subject:Lcom/google/gdata/util/parser/Parser;

    .line 73
    iput p2, p0, Lcom/google/gdata/util/parser/Repeat;->min:I

    .line 74
    iput p3, p0, Lcom/google/gdata/util/parser/Repeat;->max:I

    .line 75
    return-void
.end method


# virtual methods
.method public parse([CIILjava/lang/Object;)I
    .locals 6
    .param p1, "buf"    # [C
    .param p2, "start"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([CIITT;)I"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/gdata/util/parser/Repeat;, "Lcom/google/gdata/util/parser/Repeat<TT;>;"
    .local p4, "data":Ljava/lang/Object;, "TT;"
    const/4 v3, -0x1

    .line 87
    const/4 v0, 0x0

    .line 89
    .local v0, "hit":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v4, p0, Lcom/google/gdata/util/parser/Repeat;->max:I

    if-eq v1, v4, :cond_0

    .line 90
    iget-object v4, p0, Lcom/google/gdata/util/parser/Repeat;->subject:Lcom/google/gdata/util/parser/Parser;

    add-int v5, p2, v0

    invoke-virtual {v4, p1, v5, p3, p4}, Lcom/google/gdata/util/parser/Parser;->parse([CIILjava/lang/Object;)I

    move-result v2

    .line 92
    .local v2, "next":I
    if-nez v2, :cond_1

    .line 105
    .end local v0    # "hit":I
    .end local v2    # "next":I
    :cond_0
    :goto_1
    return v0

    .line 95
    .restart local v0    # "hit":I
    .restart local v2    # "next":I
    :cond_1
    if-ne v2, v3, :cond_2

    .line 96
    iget v4, p0, Lcom/google/gdata/util/parser/Repeat;->min:I

    if-ge v1, v4, :cond_0

    move v0, v3

    .line 97
    goto :goto_1

    .line 102
    :cond_2
    add-int/2addr v0, v2

    .line 89
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
