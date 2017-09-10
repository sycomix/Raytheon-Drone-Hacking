.class public Lcom/google/gdata/util/parser/Action;
.super Lcom/google/gdata/util/parser/Parser;
.source "Action.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:TT;>",
        "Lcom/google/gdata/util/parser/Parser",
        "<TU;>;"
    }
.end annotation


# instance fields
.field private callback:Lcom/google/gdata/util/parser/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/util/parser/Callback",
            "<TU;>;"
        }
    .end annotation
.end field

.field private subject:Lcom/google/gdata/util/parser/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/util/parser/Parser",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/gdata/util/parser/Parser;Lcom/google/gdata/util/parser/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/util/parser/Parser",
            "<TT;>;",
            "Lcom/google/gdata/util/parser/Callback",
            "<TU;>;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Lcom/google/gdata/util/parser/Action;, "Lcom/google/gdata/util/parser/Action<TT;TU;>;"
    .local p1, "subject":Lcom/google/gdata/util/parser/Parser;, "Lcom/google/gdata/util/parser/Parser<TT;>;"
    .local p2, "callback":Lcom/google/gdata/util/parser/Callback;, "Lcom/google/gdata/util/parser/Callback<TU;>;"
    invoke-direct {p0}, Lcom/google/gdata/util/parser/Parser;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/google/gdata/util/parser/Action;->subject:Lcom/google/gdata/util/parser/Parser;

    .line 59
    iput-object p2, p0, Lcom/google/gdata/util/parser/Action;->callback:Lcom/google/gdata/util/parser/Callback;

    .line 60
    return-void
.end method


# virtual methods
.method public parse([CIILjava/lang/Object;)I
    .locals 3
    .param p1, "buf"    # [C
    .param p2, "start"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([CIITU;)I"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "this":Lcom/google/gdata/util/parser/Action;, "Lcom/google/gdata/util/parser/Action<TT;TU;>;"
    .local p4, "data":Ljava/lang/Object;, "TU;"
    iget-object v1, p0, Lcom/google/gdata/util/parser/Action;->subject:Lcom/google/gdata/util/parser/Parser;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/google/gdata/util/parser/Parser;->parse([CIILjava/lang/Object;)I

    move-result v0

    .line 73
    .local v0, "hit":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/google/gdata/util/parser/Action;->callback:Lcom/google/gdata/util/parser/Callback;

    add-int v2, p2, v0

    invoke-interface {v1, p1, p2, v2, p4}, Lcom/google/gdata/util/parser/Callback;->handle([CIILjava/lang/Object;)V

    .line 76
    :cond_0
    return v0
.end method
