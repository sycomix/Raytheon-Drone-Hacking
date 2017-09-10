.class public Lcom/google/gdata/wireformats/ForwardingStreamProperties;
.super Ljava/lang/Object;
.source "ForwardingStreamProperties.java"

# interfaces
.implements Lcom/google/gdata/wireformats/StreamProperties;


# instance fields
.field private final delegate:Lcom/google/gdata/wireformats/StreamProperties;


# direct methods
.method public constructor <init>(Lcom/google/gdata/wireformats/StreamProperties;)V
    .locals 1
    .param p1, "delegate"    # Lcom/google/gdata/wireformats/StreamProperties;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string v0, "delegate"

    invoke-static {p1, v0}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iput-object p1, p0, Lcom/google/gdata/wireformats/ForwardingStreamProperties;->delegate:Lcom/google/gdata/wireformats/StreamProperties;

    .line 42
    return-void
.end method


# virtual methods
.method public getAltRegistry()Lcom/google/gdata/wireformats/AltRegistry;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/gdata/wireformats/ForwardingStreamProperties;->delegate:Lcom/google/gdata/wireformats/StreamProperties;

    invoke-interface {v0}, Lcom/google/gdata/wireformats/StreamProperties;->getAltRegistry()Lcom/google/gdata/wireformats/AltRegistry;

    move-result-object v0

    return-object v0
.end method

.method public getContentType()Lcom/google/gdata/util/ContentType;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/gdata/wireformats/ForwardingStreamProperties;->delegate:Lcom/google/gdata/wireformats/StreamProperties;

    invoke-interface {v0}, Lcom/google/gdata/wireformats/StreamProperties;->getContentType()Lcom/google/gdata/util/ContentType;

    move-result-object v0

    return-object v0
.end method

.method public getExtensionProfile()Lcom/google/gdata/data/ExtensionProfile;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/gdata/wireformats/ForwardingStreamProperties;->delegate:Lcom/google/gdata/wireformats/StreamProperties;

    invoke-interface {v0}, Lcom/google/gdata/wireformats/StreamProperties;->getExtensionProfile()Lcom/google/gdata/data/ExtensionProfile;

    move-result-object v0

    return-object v0
.end method

.method public getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/gdata/wireformats/ForwardingStreamProperties;->delegate:Lcom/google/gdata/wireformats/StreamProperties;

    invoke-interface {v0, p1}, Lcom/google/gdata/wireformats/StreamProperties;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQueryParameterNames()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/gdata/wireformats/ForwardingStreamProperties;->delegate:Lcom/google/gdata/wireformats/StreamProperties;

    invoke-interface {v0}, Lcom/google/gdata/wireformats/StreamProperties;->getQueryParameterNames()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getRootMetadata()Lcom/google/gdata/model/ElementMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;"
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/gdata/wireformats/ForwardingStreamProperties;->delegate:Lcom/google/gdata/wireformats/StreamProperties;

    invoke-interface {v0}, Lcom/google/gdata/wireformats/StreamProperties;->getRootMetadata()Lcom/google/gdata/model/ElementMetadata;

    move-result-object v0

    return-object v0
.end method
