.class public Lcom/google/gdata/wireformats/input/ForwardingInputProperties;
.super Lcom/google/gdata/wireformats/ForwardingStreamProperties;
.source "ForwardingInputProperties.java"

# interfaces
.implements Lcom/google/gdata/wireformats/input/InputProperties;


# instance fields
.field private final delegate:Lcom/google/gdata/wireformats/input/InputProperties;


# direct methods
.method public constructor <init>(Lcom/google/gdata/wireformats/input/InputProperties;)V
    .locals 0
    .param p1, "delegate"    # Lcom/google/gdata/wireformats/input/InputProperties;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/google/gdata/wireformats/ForwardingStreamProperties;-><init>(Lcom/google/gdata/wireformats/StreamProperties;)V

    .line 36
    iput-object p1, p0, Lcom/google/gdata/wireformats/input/ForwardingInputProperties;->delegate:Lcom/google/gdata/wireformats/input/InputProperties;

    .line 37
    return-void
.end method


# virtual methods
.method public getRootType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/gdata/wireformats/input/ForwardingInputProperties;->delegate:Lcom/google/gdata/wireformats/input/InputProperties;

    invoke-interface {v0}, Lcom/google/gdata/wireformats/input/InputProperties;->getRootType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
