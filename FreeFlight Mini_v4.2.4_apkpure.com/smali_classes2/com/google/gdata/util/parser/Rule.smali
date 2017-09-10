.class public Lcom/google/gdata/util/parser/Rule;
.super Lcom/google/gdata/util/parser/Parser;
.source "Rule.java"


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
.field private subject:Lcom/google/gdata/util/parser/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/util/parser/Parser",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    .local p0, "this":Lcom/google/gdata/util/parser/Rule;, "Lcom/google/gdata/util/parser/Rule<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/gdata/util/parser/Rule;-><init>(Lcom/google/gdata/util/parser/Parser;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/util/parser/Parser;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/util/parser/Parser",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lcom/google/gdata/util/parser/Rule;, "Lcom/google/gdata/util/parser/Rule<TT;>;"
    .local p1, "subject":Lcom/google/gdata/util/parser/Parser;, "Lcom/google/gdata/util/parser/Parser<TT;>;"
    invoke-direct {p0}, Lcom/google/gdata/util/parser/Parser;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/google/gdata/util/parser/Rule;->subject:Lcom/google/gdata/util/parser/Parser;

    .line 57
    return-void
.end method


# virtual methods
.method public parse([CIILjava/lang/Object;)I
    .locals 1
    .param p1, "buf"    # [C
    .param p2, "start"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([CIITT;)I"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Lcom/google/gdata/util/parser/Rule;, "Lcom/google/gdata/util/parser/Rule<TT;>;"
    .local p4, "data":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/google/gdata/util/parser/Rule;->subject:Lcom/google/gdata/util/parser/Parser;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/google/gdata/util/parser/Rule;->subject:Lcom/google/gdata/util/parser/Parser;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/gdata/util/parser/Parser;->parse([CIILjava/lang/Object;)I

    move-result v0

    .line 70
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public set(Lcom/google/gdata/util/parser/Parser;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/util/parser/Parser",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, "this":Lcom/google/gdata/util/parser/Rule;, "Lcom/google/gdata/util/parser/Rule<TT;>;"
    .local p1, "subject":Lcom/google/gdata/util/parser/Parser;, "Lcom/google/gdata/util/parser/Parser<TT;>;"
    iput-object p1, p0, Lcom/google/gdata/util/parser/Rule;->subject:Lcom/google/gdata/util/parser/Parser;

    .line 82
    return-void
.end method
