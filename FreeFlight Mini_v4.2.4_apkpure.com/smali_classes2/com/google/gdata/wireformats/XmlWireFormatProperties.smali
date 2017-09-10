.class public Lcom/google/gdata/wireformats/XmlWireFormatProperties;
.super Ljava/lang/Object;
.source "XmlWireFormatProperties.java"


# instance fields
.field private elementGenerator:Lcom/google/gdata/wireformats/XmlGenerator$ElementGenerator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getElementGenerator()Lcom/google/gdata/wireformats/XmlGenerator$ElementGenerator;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/gdata/wireformats/XmlWireFormatProperties;->elementGenerator:Lcom/google/gdata/wireformats/XmlGenerator$ElementGenerator;

    return-object v0
.end method

.method public setElementGenerator(Lcom/google/gdata/wireformats/XmlGenerator$ElementGenerator;)Lcom/google/gdata/wireformats/XmlWireFormatProperties;
    .locals 0
    .param p1, "elementGenerator"    # Lcom/google/gdata/wireformats/XmlGenerator$ElementGenerator;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/google/gdata/wireformats/XmlWireFormatProperties;->elementGenerator:Lcom/google/gdata/wireformats/XmlGenerator$ElementGenerator;

    .line 41
    return-object p0
.end method
