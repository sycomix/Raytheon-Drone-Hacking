.class public Lcom/google/gdata/wireformats/output/AtomServiceGenerator;
.super Lcom/google/gdata/wireformats/output/XmlGenerator;
.source "AtomServiceGenerator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/wireformats/output/XmlGenerator",
        "<",
        "Lcom/google/gdata/data/introspection/IServiceDocument;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/gdata/wireformats/output/XmlGenerator;-><init>()V

    return-void
.end method


# virtual methods
.method public generateXml(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/wireformats/output/OutputProperties;Lcom/google/gdata/data/introspection/IServiceDocument;)V
    .locals 3
    .param p1, "xw"    # Lcom/google/gdata/util/common/xml/XmlWriter;
    .param p2, "outProps"    # Lcom/google/gdata/wireformats/output/OutputProperties;
    .param p3, "source"    # Lcom/google/gdata/data/introspection/IServiceDocument;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    instance-of v0, p3, Lcom/google/gdata/data/introspection/ServiceDocument;

    if-eqz v0, :cond_1

    .line 49
    check-cast p3, Lcom/google/gdata/data/introspection/ServiceDocument;

    .end local p3    # "source":Lcom/google/gdata/data/introspection/IServiceDocument;
    invoke-interface {p2}, Lcom/google/gdata/wireformats/output/OutputProperties;->getExtensionProfile()Lcom/google/gdata/data/ExtensionProfile;

    move-result-object v0

    invoke-virtual {p3, p1, v0}, Lcom/google/gdata/data/introspection/ServiceDocument;->generate(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V

    .line 56
    :cond_0
    return-void

    .line 50
    .restart local p3    # "source":Lcom/google/gdata/data/introspection/IServiceDocument;
    :cond_1
    if-eqz p3, :cond_0

    .line 53
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected source type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic generateXml(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/wireformats/output/OutputProperties;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/gdata/util/common/xml/XmlWriter;
    .param p2, "x1"    # Lcom/google/gdata/wireformats/output/OutputProperties;
    .param p3, "x2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    check-cast p3, Lcom/google/gdata/data/introspection/IServiceDocument;

    .end local p3    # "x2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/gdata/wireformats/output/AtomServiceGenerator;->generateXml(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/wireformats/output/OutputProperties;Lcom/google/gdata/data/introspection/IServiceDocument;)V

    return-void
.end method

.method public getAltFormat()Lcom/google/gdata/wireformats/AltFormat;
    .locals 1

    .prologue
    .line 34
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
    .line 38
    const-class v0, Lcom/google/gdata/data/introspection/IServiceDocument;

    return-object v0
.end method
