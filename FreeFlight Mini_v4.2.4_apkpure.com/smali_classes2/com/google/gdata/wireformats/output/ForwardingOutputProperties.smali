.class public Lcom/google/gdata/wireformats/output/ForwardingOutputProperties;
.super Lcom/google/gdata/wireformats/ForwardingStreamProperties;
.source "ForwardingOutputProperties.java"

# interfaces
.implements Lcom/google/gdata/wireformats/output/OutputProperties;


# direct methods
.method public constructor <init>(Lcom/google/gdata/wireformats/output/OutputProperties;)V
    .locals 0
    .param p1, "delegate"    # Lcom/google/gdata/wireformats/output/OutputProperties;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/google/gdata/wireformats/ForwardingStreamProperties;-><init>(Lcom/google/gdata/wireformats/StreamProperties;)V

    .line 34
    return-void
.end method
