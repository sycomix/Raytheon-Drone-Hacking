.class public Lcom/google/gdata/wireformats/output/AtomServiceDualGenerator;
.super Lcom/google/gdata/wireformats/output/DualModeGenerator;
.source "AtomServiceDualGenerator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/wireformats/output/DualModeGenerator",
        "<",
        "Lcom/google/gdata/data/introspection/IServiceDocument;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/google/gdata/wireformats/output/AtomServiceGenerator;

    invoke-direct {v0}, Lcom/google/gdata/wireformats/output/AtomServiceGenerator;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/gdata/wireformats/output/DualModeGenerator;-><init>(Lcom/google/gdata/wireformats/output/CharacterGenerator;)V

    .line 33
    return-void
.end method


# virtual methods
.method public getAltFormat()Lcom/google/gdata/wireformats/AltFormat;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/google/gdata/wireformats/AltFormat;->ATOM_SERVICE:Lcom/google/gdata/wireformats/AltFormat;

    return-object v0
.end method

.method public getSourceType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lcom/google/gdata/data/introspection/IServiceDocument;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    const-class v0, Lcom/google/gdata/data/introspection/IServiceDocument;

    return-object v0
.end method

.method public getWireFormat()Lcom/google/gdata/wireformats/WireFormat;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/google/gdata/wireformats/WireFormat;->XML:Lcom/google/gdata/wireformats/XmlWireFormat;

    return-object v0
.end method
