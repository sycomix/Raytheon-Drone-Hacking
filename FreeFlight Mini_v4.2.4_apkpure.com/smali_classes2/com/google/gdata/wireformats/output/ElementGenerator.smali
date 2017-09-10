.class public Lcom/google/gdata/wireformats/output/ElementGenerator;
.super Lcom/google/gdata/wireformats/output/WireFormatOutputGenerator;
.source "ElementGenerator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Lcom/google/gdata/model/Element;",
        ">",
        "Lcom/google/gdata/wireformats/output/WireFormatOutputGenerator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final altFormat:Lcom/google/gdata/wireformats/AltFormat;

.field private final inputType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/gdata/wireformats/AltFormat;Ljava/lang/Class;)V
    .locals 0
    .param p1, "altFormat"    # Lcom/google/gdata/wireformats/AltFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/wireformats/AltFormat;",
            "Ljava/lang/Class",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lcom/google/gdata/wireformats/output/ElementGenerator;, "Lcom/google/gdata/wireformats/output/ElementGenerator<TE;>;"
    .local p2, "inputType":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-direct {p0}, Lcom/google/gdata/wireformats/output/WireFormatOutputGenerator;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/google/gdata/wireformats/output/ElementGenerator;->altFormat:Lcom/google/gdata/wireformats/AltFormat;

    .line 44
    iput-object p2, p0, Lcom/google/gdata/wireformats/output/ElementGenerator;->inputType:Ljava/lang/Class;

    .line 45
    return-void
.end method

.method public static of(Lcom/google/gdata/wireformats/AltFormat;Ljava/lang/Class;)Lcom/google/gdata/wireformats/output/ElementGenerator;
    .locals 1
    .param p0, "altFormat"    # Lcom/google/gdata/wireformats/AltFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lcom/google/gdata/model/Element;",
            ">(",
            "Lcom/google/gdata/wireformats/AltFormat;",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Lcom/google/gdata/wireformats/output/ElementGenerator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 36
    .local p1, "inputType":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    new-instance v0, Lcom/google/gdata/wireformats/output/ElementGenerator;

    invoke-direct {v0, p0, p1}, Lcom/google/gdata/wireformats/output/ElementGenerator;-><init>(Lcom/google/gdata/wireformats/AltFormat;Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public getAltFormat()Lcom/google/gdata/wireformats/AltFormat;
    .locals 1

    .prologue
    .line 53
    .local p0, "this":Lcom/google/gdata/wireformats/output/ElementGenerator;, "Lcom/google/gdata/wireformats/output/ElementGenerator<TE;>;"
    iget-object v0, p0, Lcom/google/gdata/wireformats/output/ElementGenerator;->altFormat:Lcom/google/gdata/wireformats/AltFormat;

    return-object v0
.end method

.method public getSourceType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Lcom/google/gdata/wireformats/output/ElementGenerator;, "Lcom/google/gdata/wireformats/output/ElementGenerator<TE;>;"
    iget-object v0, p0, Lcom/google/gdata/wireformats/output/ElementGenerator;->inputType:Ljava/lang/Class;

    return-object v0
.end method

.method public getWireFormat()Lcom/google/gdata/wireformats/WireFormat;
    .locals 1

    .prologue
    .line 49
    .local p0, "this":Lcom/google/gdata/wireformats/output/ElementGenerator;, "Lcom/google/gdata/wireformats/output/ElementGenerator<TE;>;"
    iget-object v0, p0, Lcom/google/gdata/wireformats/output/ElementGenerator;->altFormat:Lcom/google/gdata/wireformats/AltFormat;

    invoke-virtual {v0}, Lcom/google/gdata/wireformats/AltFormat;->getWireFormat()Lcom/google/gdata/wireformats/WireFormat;

    move-result-object v0

    return-object v0
.end method
