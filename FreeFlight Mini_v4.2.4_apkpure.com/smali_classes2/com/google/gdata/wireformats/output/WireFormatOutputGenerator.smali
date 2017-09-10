.class public abstract Lcom/google/gdata/wireformats/output/WireFormatOutputGenerator;
.super Lcom/google/gdata/wireformats/output/CharacterGenerator;
.source "WireFormatOutputGenerator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/gdata/wireformats/output/CharacterGenerator",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    .local p0, "this":Lcom/google/gdata/wireformats/output/WireFormatOutputGenerator;, "Lcom/google/gdata/wireformats/output/WireFormatOutputGenerator<TT;>;"
    invoke-direct {p0}, Lcom/google/gdata/wireformats/output/CharacterGenerator;-><init>()V

    return-void
.end method


# virtual methods
.method public generate(Ljava/io/Writer;Lcom/google/gdata/wireformats/output/OutputProperties;Ljava/lang/Object;)V
    .locals 10
    .param p1, "w"    # Ljava/io/Writer;
    .param p2, "outProps"    # Lcom/google/gdata/wireformats/output/OutputProperties;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Writer;",
            "Lcom/google/gdata/wireformats/output/OutputProperties;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lcom/google/gdata/wireformats/output/WireFormatOutputGenerator;, "Lcom/google/gdata/wireformats/output/WireFormatOutputGenerator<TT;>;"
    .local p3, "source":Ljava/lang/Object;, "TT;"
    instance-of v7, p3, Lcom/google/gdata/model/Element;

    if-eqz v7, :cond_3

    move-object v2, p3

    .line 54
    check-cast v2, Lcom/google/gdata/model/Element;

    .line 56
    .local v2, "elem":Lcom/google/gdata/model/Element;
    :try_start_0
    invoke-interface {p2}, Lcom/google/gdata/wireformats/output/OutputProperties;->getRootMetadata()Lcom/google/gdata/model/ElementMetadata;

    move-result-object v5

    .line 57
    .local v5, "outputMetadata":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<**>;"
    if-nez v5, :cond_0

    .line 58
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No metadata for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lcom/google/gdata/model/Element;->getElementKey()Lcom/google/gdata/model/ElementKey;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Lcom/google/gdata/wireformats/ContentValidationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .end local v5    # "outputMetadata":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<**>;"
    :catch_0
    move-exception v1

    .line 90
    .local v1, "e":Lcom/google/gdata/wireformats/ContentValidationException;
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid content: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lcom/google/gdata/wireformats/ContentValidationException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 61
    .end local v1    # "e":Lcom/google/gdata/wireformats/ContentValidationException;
    .restart local v5    # "outputMetadata":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<**>;"
    :cond_0
    :try_start_1
    invoke-virtual {v2, v5}, Lcom/google/gdata/model/Element;->resolve(Lcom/google/gdata/model/ElementMetadata;)Lcom/google/gdata/model/Element;

    move-result-object v2

    .line 67
    invoke-virtual {v2}, Lcom/google/gdata/model/Element;->getElementKey()Lcom/google/gdata/model/ElementKey;

    move-result-object v7

    invoke-interface {v5}, Lcom/google/gdata/model/ElementMetadata;->getKey()Lcom/google/gdata/model/ElementKey;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/gdata/model/ElementKey;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 68
    invoke-interface {v5}, Lcom/google/gdata/model/ElementMetadata;->getSchema()Lcom/google/gdata/model/Schema;

    move-result-object v7

    invoke-virtual {v2}, Lcom/google/gdata/model/Element;->getElementKey()Lcom/google/gdata/model/ElementKey;

    move-result-object v8

    invoke-interface {v5}, Lcom/google/gdata/model/ElementMetadata;->getContext()Lcom/google/gdata/model/MetadataContext;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/google/gdata/model/Schema;->bind(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/ElementMetadata;

    move-result-object v5

    .line 71
    if-nez v5, :cond_1

    .line 72
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to rebind from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {p2}, Lcom/google/gdata/wireformats/output/OutputProperties;->getRootMetadata()Lcom/google/gdata/model/ElementMetadata;

    move-result-object v9

    invoke-interface {v9}, Lcom/google/gdata/model/ElementMetadata;->getKey()Lcom/google/gdata/model/ElementKey;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lcom/google/gdata/model/Element;->getElementKey()Lcom/google/gdata/model/ElementKey;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 76
    :cond_1
    new-instance v7, Lcom/google/gdata/wireformats/output/OutputPropertiesBuilder;

    invoke-direct {v7, p2}, Lcom/google/gdata/wireformats/output/OutputPropertiesBuilder;-><init>(Lcom/google/gdata/wireformats/output/OutputProperties;)V

    invoke-virtual {v7, v5}, Lcom/google/gdata/wireformats/output/OutputPropertiesBuilder;->setElementMetadata(Lcom/google/gdata/model/ElementMetadata;)Lcom/google/gdata/wireformats/StreamPropertiesBuilder;

    move-result-object v7

    check-cast v7, Lcom/google/gdata/wireformats/output/OutputPropertiesBuilder;

    invoke-virtual {v7}, Lcom/google/gdata/wireformats/output/OutputPropertiesBuilder;->build()Lcom/google/gdata/wireformats/output/OutputProperties;

    move-result-object p2

    .line 82
    :cond_2
    invoke-virtual {p0}, Lcom/google/gdata/wireformats/output/WireFormatOutputGenerator;->getWireFormat()Lcom/google/gdata/wireformats/WireFormat;

    move-result-object v6

    .line 83
    .local v6, "wireFormat":Lcom/google/gdata/wireformats/WireFormat;
    invoke-static {p2}, Lcom/google/gdata/wireformats/output/WireFormatOutputGenerator;->getCharsetEncoding(Lcom/google/gdata/wireformats/output/OutputProperties;)Ljava/lang/String;

    move-result-object v3

    .line 84
    .local v3, "encoding":Ljava/lang/String;
    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 85
    .local v0, "cs":Ljava/nio/charset/Charset;
    invoke-virtual {p0, p2}, Lcom/google/gdata/wireformats/output/WireFormatOutputGenerator;->usePrettyPrint(Lcom/google/gdata/wireformats/output/OutputProperties;)Z

    move-result v7

    invoke-virtual {v6, p2, p1, v0, v7}, Lcom/google/gdata/wireformats/WireFormat;->createGenerator(Lcom/google/gdata/wireformats/output/OutputProperties;Ljava/io/Writer;Ljava/nio/charset/Charset;Z)Lcom/google/gdata/wireformats/WireFormatGenerator;

    move-result-object v4

    .line 88
    .local v4, "gen":Lcom/google/gdata/wireformats/WireFormatGenerator;
    invoke-interface {v4, v2}, Lcom/google/gdata/wireformats/WireFormatGenerator;->generate(Lcom/google/gdata/model/Element;)V
    :try_end_1
    .catch Lcom/google/gdata/wireformats/ContentValidationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 92
    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    .line 97
    return-void

    .line 94
    .end local v0    # "cs":Ljava/nio/charset/Charset;
    .end local v2    # "elem":Lcom/google/gdata/model/Element;
    .end local v3    # "encoding":Ljava/lang/String;
    .end local v4    # "gen":Lcom/google/gdata/wireformats/WireFormatGenerator;
    .end local v5    # "outputMetadata":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<**>;"
    .end local v6    # "wireFormat":Lcom/google/gdata/wireformats/WireFormat;
    :cond_3
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Output object was not an Element: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public abstract getWireFormat()Lcom/google/gdata/wireformats/WireFormat;
.end method
