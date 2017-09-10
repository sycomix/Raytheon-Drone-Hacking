.class public Lcom/google/gdata/wireformats/output/AtomDualGenerator;
.super Lcom/google/gdata/wireformats/output/DualModeGenerator;
.source "AtomDualGenerator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/wireformats/output/DualModeGenerator",
        "<",
        "Lcom/google/gdata/data/IAtom;",
        ">;"
    }
.end annotation


# instance fields
.field private altFormat:Lcom/google/gdata/wireformats/AltFormat;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/google/gdata/wireformats/output/AtomGenerator;

    invoke-direct {v0}, Lcom/google/gdata/wireformats/output/AtomGenerator;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/gdata/wireformats/output/DualModeGenerator;-><init>(Lcom/google/gdata/wireformats/output/CharacterGenerator;)V

    .line 30
    sget-object v0, Lcom/google/gdata/wireformats/AltFormat;->ATOM:Lcom/google/gdata/wireformats/AltFormat;

    iput-object v0, p0, Lcom/google/gdata/wireformats/output/AtomDualGenerator;->altFormat:Lcom/google/gdata/wireformats/AltFormat;

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/wireformats/AltFormat;)V
    .locals 1
    .param p1, "altFormat"    # Lcom/google/gdata/wireformats/AltFormat;

    .prologue
    .line 37
    new-instance v0, Lcom/google/gdata/wireformats/output/AtomGenerator;

    invoke-direct {v0}, Lcom/google/gdata/wireformats/output/AtomGenerator;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/gdata/wireformats/output/DualModeGenerator;-><init>(Lcom/google/gdata/wireformats/output/CharacterGenerator;)V

    .line 30
    sget-object v0, Lcom/google/gdata/wireformats/AltFormat;->ATOM:Lcom/google/gdata/wireformats/AltFormat;

    iput-object v0, p0, Lcom/google/gdata/wireformats/output/AtomDualGenerator;->altFormat:Lcom/google/gdata/wireformats/AltFormat;

    .line 38
    iput-object p1, p0, Lcom/google/gdata/wireformats/output/AtomDualGenerator;->altFormat:Lcom/google/gdata/wireformats/AltFormat;

    .line 39
    return-void
.end method


# virtual methods
.method public getAltFormat()Lcom/google/gdata/wireformats/AltFormat;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/gdata/wireformats/output/AtomDualGenerator;->altFormat:Lcom/google/gdata/wireformats/AltFormat;

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
    .line 42
    const-class v0, Lcom/google/gdata/data/IAtom;

    return-object v0
.end method

.method public getWireFormat()Lcom/google/gdata/wireformats/WireFormat;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/google/gdata/wireformats/WireFormat;->XML:Lcom/google/gdata/wireformats/XmlWireFormat;

    return-object v0
.end method
