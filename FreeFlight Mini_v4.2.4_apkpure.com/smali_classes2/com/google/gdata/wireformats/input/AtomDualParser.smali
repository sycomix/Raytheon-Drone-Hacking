.class public Lcom/google/gdata/wireformats/input/AtomDualParser;
.super Ljava/lang/Object;
.source "AtomDualParser.java"

# interfaces
.implements Lcom/google/gdata/wireformats/input/InputParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/gdata/wireformats/input/InputParser",
        "<",
        "Lcom/google/gdata/data/IAtom;",
        ">;"
    }
.end annotation


# instance fields
.field private final dataParser:Lcom/google/gdata/wireformats/input/InputParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/wireformats/input/InputParser",
            "<",
            "Lcom/google/gdata/data/IAtom;",
            ">;"
        }
    .end annotation
.end field

.field private final elementParser:Lcom/google/gdata/wireformats/input/InputParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/wireformats/input/InputParser",
            "<",
            "Lcom/google/gdata/data/IAtom;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/google/gdata/wireformats/input/AtomDataParser;

    invoke-direct {v0}, Lcom/google/gdata/wireformats/input/AtomDataParser;-><init>()V

    iput-object v0, p0, Lcom/google/gdata/wireformats/input/AtomDualParser;->dataParser:Lcom/google/gdata/wireformats/input/InputParser;

    .line 44
    sget-object v0, Lcom/google/gdata/wireformats/AltFormat;->ATOM:Lcom/google/gdata/wireformats/AltFormat;

    const-class v1, Lcom/google/gdata/data/IAtom;

    invoke-static {v0, v1}, Lcom/google/gdata/wireformats/input/ElementParser;->of(Lcom/google/gdata/wireformats/AltFormat;Ljava/lang/Class;)Lcom/google/gdata/wireformats/input/ElementParser;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/wireformats/input/AtomDualParser;->elementParser:Lcom/google/gdata/wireformats/input/InputParser;

    return-void
.end method


# virtual methods
.method public getAltFormat()Lcom/google/gdata/wireformats/AltFormat;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/google/gdata/wireformats/AltFormat;->ATOM:Lcom/google/gdata/wireformats/AltFormat;

    return-object v0
.end method

.method public getResultType()Ljava/lang/Class;
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
    .line 52
    const-class v0, Lcom/google/gdata/data/IAtom;

    return-object v0
.end method

.method public parse(Lcom/google/gdata/data/ParseSource;Lcom/google/gdata/wireformats/input/InputProperties;Ljava/lang/Class;)Lcom/google/gdata/data/IAtom;
    .locals 1
    .param p1, "parseSource"    # Lcom/google/gdata/data/ParseSource;
    .param p2, "inProps"    # Lcom/google/gdata/wireformats/input/InputProperties;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lcom/google/gdata/data/IAtom;",
            ">(",
            "Lcom/google/gdata/data/ParseSource;",
            "Lcom/google/gdata/wireformats/input/InputProperties;",
            "Ljava/lang/Class",
            "<TR;>;)TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 58
    .local p3, "resultClass":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    const-string v0, "parseSource"

    invoke-static {p1, v0}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v0, "inProps"

    invoke-static {p2, v0}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string v0, "resultClass"

    invoke-static {v0, p3}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-class v0, Lcom/google/gdata/model/Element;

    invoke-virtual {v0, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/google/gdata/wireformats/input/AtomDualParser;->elementParser:Lcom/google/gdata/wireformats/input/InputParser;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/gdata/wireformats/input/InputParser;->parse(Lcom/google/gdata/data/ParseSource;Lcom/google/gdata/wireformats/input/InputProperties;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/IAtom;

    .line 66
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/gdata/wireformats/input/AtomDualParser;->dataParser:Lcom/google/gdata/wireformats/input/InputParser;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/gdata/wireformats/input/InputParser;->parse(Lcom/google/gdata/data/ParseSource;Lcom/google/gdata/wireformats/input/InputProperties;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/IAtom;

    goto :goto_0
.end method

.method public bridge synthetic parse(Lcom/google/gdata/data/ParseSource;Lcom/google/gdata/wireformats/input/InputProperties;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/google/gdata/data/ParseSource;
    .param p2, "x1"    # Lcom/google/gdata/wireformats/input/InputProperties;
    .param p3, "x2"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/gdata/wireformats/input/AtomDualParser;->parse(Lcom/google/gdata/data/ParseSource;Lcom/google/gdata/wireformats/input/InputProperties;Ljava/lang/Class;)Lcom/google/gdata/data/IAtom;

    move-result-object v0

    return-object v0
.end method
