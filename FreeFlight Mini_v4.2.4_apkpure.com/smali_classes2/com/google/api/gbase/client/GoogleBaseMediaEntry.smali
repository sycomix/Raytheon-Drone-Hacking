.class public Lcom/google/api/gbase/client/GoogleBaseMediaEntry;
.super Lcom/google/gdata/data/media/MediaEntry;
.source "GoogleBaseMediaEntry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/data/media/MediaEntry",
        "<",
        "Lcom/google/api/gbase/client/GoogleBaseMediaEntry;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/google/gdata/data/media/MediaEntry;-><init>()V

    return-void
.end method


# virtual methods
.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 2
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/google/gdata/data/media/MediaEntry;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 44
    const-class v0, Lcom/google/api/gbase/client/GoogleBaseMediaEntry;

    const-class v1, Lcom/google/gdata/data/media/mediarss/MediaContent;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 45
    return-void
.end method
