.class public Lcom/google/gdata/wireformats/output/RssDualGenerator;
.super Lcom/google/gdata/wireformats/output/DualModeGenerator;
.source "RssDualGenerator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/wireformats/output/DualModeGenerator",
        "<",
        "Lcom/google/gdata/data/IAtom;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/google/gdata/wireformats/output/RssGenerator;

    invoke-direct {v0}, Lcom/google/gdata/wireformats/output/RssGenerator;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/gdata/wireformats/output/DualModeGenerator;-><init>(Lcom/google/gdata/wireformats/output/CharacterGenerator;)V

    .line 32
    return-void
.end method


# virtual methods
.method public getAltFormat()Lcom/google/gdata/wireformats/AltFormat;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/google/gdata/wireformats/AltFormat;->RSS:Lcom/google/gdata/wireformats/AltFormat;

    return-object v0
.end method

.method public getSourceType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lcom/google/gdata/data/IAtom;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    const-class v0, Lcom/google/gdata/data/IAtom;

    return-object v0
.end method

.method public getWireFormat()Lcom/google/gdata/wireformats/WireFormat;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/google/gdata/wireformats/WireFormat;->XML:Lcom/google/gdata/wireformats/XmlWireFormat;

    return-object v0
.end method
