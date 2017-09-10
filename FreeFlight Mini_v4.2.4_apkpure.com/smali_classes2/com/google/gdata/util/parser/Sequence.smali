.class public Lcom/google/gdata/util/parser/Sequence;
.super Lcom/google/gdata/util/parser/Parser;
.source "Sequence.java"


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
.field private left:Lcom/google/gdata/util/parser/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/util/parser/Parser",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private right:Lcom/google/gdata/util/parser/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/util/parser/Parser",
            "<-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/gdata/util/parser/Parser;Lcom/google/gdata/util/parser/Parser;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/util/parser/Parser",
            "<-TT;>;",
            "Lcom/google/gdata/util/parser/Parser",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "this":Lcom/google/gdata/util/parser/Sequence;, "Lcom/google/gdata/util/parser/Sequence<TT;>;"
    .local p1, "left":Lcom/google/gdata/util/parser/Parser;, "Lcom/google/gdata/util/parser/Parser<-TT;>;"
    .local p2, "right":Lcom/google/gdata/util/parser/Parser;, "Lcom/google/gdata/util/parser/Parser<-TT;>;"
    invoke-direct {p0}, Lcom/google/gdata/util/parser/Parser;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/google/gdata/util/parser/Sequence;->left:Lcom/google/gdata/util/parser/Parser;

    .line 54
    iput-object p2, p0, Lcom/google/gdata/util/parser/Sequence;->right:Lcom/google/gdata/util/parser/Parser;

    .line 55
    return-void
.end method


# virtual methods
.method public parse([CIILjava/lang/Object;)I
    .locals 5
    .param p1, "buf"    # [C
    .param p2, "start"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([CIITT;)I"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/gdata/util/parser/Sequence;, "Lcom/google/gdata/util/parser/Sequence<TT;>;"
    .local p4, "data":Ljava/lang/Object;, "TT;"
    const/4 v2, -0x1

    .line 66
    iget-object v3, p0, Lcom/google/gdata/util/parser/Sequence;->left:Lcom/google/gdata/util/parser/Parser;

    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/google/gdata/util/parser/Parser;->parse([CIILjava/lang/Object;)I

    move-result v0

    .line 67
    .local v0, "left_hit":I
    if-eq v0, v2, :cond_0

    .line 68
    iget-object v3, p0, Lcom/google/gdata/util/parser/Sequence;->right:Lcom/google/gdata/util/parser/Parser;

    add-int v4, p2, v0

    invoke-virtual {v3, p1, v4, p3, p4}, Lcom/google/gdata/util/parser/Parser;->parse([CIILjava/lang/Object;)I

    move-result v1

    .line 69
    .local v1, "right_hit":I
    if-eq v1, v2, :cond_0

    .line 70
    add-int v2, v0, v1

    .line 73
    .end local v1    # "right_hit":I
    :cond_0
    return v2
.end method
