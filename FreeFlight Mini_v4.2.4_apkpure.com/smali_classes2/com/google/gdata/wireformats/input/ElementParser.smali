.class public Lcom/google/gdata/wireformats/input/ElementParser;
.super Lcom/google/gdata/wireformats/input/CharacterParser;
.source "ElementParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/gdata/wireformats/input/CharacterParser",
        "<TT;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lcom/google/gdata/wireformats/AltFormat;Ljava/lang/Class;)V
    .locals 0
    .param p1, "altFormat"    # Lcom/google/gdata/wireformats/AltFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/wireformats/AltFormat;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "this":Lcom/google/gdata/wireformats/input/ElementParser;, "Lcom/google/gdata/wireformats/input/ElementParser<TT;>;"
    .local p2, "resultType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/gdata/wireformats/input/CharacterParser;-><init>(Lcom/google/gdata/wireformats/AltFormat;Ljava/lang/Class;)V

    .line 73
    return-void
.end method

.method public static of(Lcom/google/gdata/wireformats/AltFormat;Ljava/lang/Class;)Lcom/google/gdata/wireformats/input/ElementParser;
    .locals 3
    .param p0, "altFormat"    # Lcom/google/gdata/wireformats/AltFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gdata/wireformats/AltFormat;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/google/gdata/wireformats/input/ElementParser",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, "resultType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Lcom/google/gdata/wireformats/AltFormat;->getWireFormat()Lcom/google/gdata/wireformats/WireFormat;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No wire format defined for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/gdata/util/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 59
    new-instance v0, Lcom/google/gdata/wireformats/input/ElementParser;

    invoke-direct {v0, p0, p1}, Lcom/google/gdata/wireformats/input/ElementParser;-><init>(Lcom/google/gdata/wireformats/AltFormat;Ljava/lang/Class;)V

    return-object v0

    .line 57
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public parse(Ljava/io/Reader;Lcom/google/gdata/wireformats/input/InputProperties;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 10
    .param p1, "inputReader"    # Ljava/io/Reader;
    .param p2, "inProps"    # Lcom/google/gdata/wireformats/input/InputProperties;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:TT;>(",
            "Ljava/io/Reader;",
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
    .line 79
    .local p0, "this":Lcom/google/gdata/wireformats/input/ElementParser;, "Lcom/google/gdata/wireformats/input/ElementParser<TT;>;"
    .local p3, "resultClass":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    invoke-interface {p2}, Lcom/google/gdata/wireformats/input/InputProperties;->getRootMetadata()Lcom/google/gdata/model/ElementMetadata;

    move-result-object v7

    const-string v8, "No element metadata"

    invoke-static {v7, v8}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    invoke-virtual {p0, p3}, Lcom/google/gdata/wireformats/input/ElementParser;->createResult(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    .line 83
    .local v5, "result":Ljava/lang/Object;, "TR;"
    instance-of v7, v5, Lcom/google/gdata/model/Element;

    if-eqz v7, :cond_0

    move-object v1, v5

    .line 84
    check-cast v1, Lcom/google/gdata/model/Element;

    .line 85
    .local v1, "element":Lcom/google/gdata/model/Element;
    iget-object v7, p0, Lcom/google/gdata/wireformats/input/ElementParser;->altFormat:Lcom/google/gdata/wireformats/AltFormat;

    invoke-virtual {v7}, Lcom/google/gdata/wireformats/AltFormat;->getWireFormat()Lcom/google/gdata/wireformats/WireFormat;

    move-result-object v2

    .line 87
    .local v2, "format":Lcom/google/gdata/wireformats/WireFormat;
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/google/gdata/wireformats/input/ElementParser;->getCharset(Lcom/google/gdata/wireformats/input/InputProperties;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-virtual {v2, p2, p1, v7}, Lcom/google/gdata/wireformats/WireFormat;->createParser(Lcom/google/gdata/wireformats/input/InputProperties;Ljava/io/Reader;Ljava/nio/charset/Charset;)Lcom/google/gdata/wireformats/WireFormatParser;

    move-result-object v4

    .line 89
    .local v4, "parser":Lcom/google/gdata/wireformats/WireFormatParser;
    invoke-interface {v4, v1}, Lcom/google/gdata/wireformats/WireFormatParser;->parse(Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    move-result-object v7

    invoke-virtual {p3, v7}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/gdata/wireformats/ContentCreationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/gdata/wireformats/ContentValidationException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v5

    .line 103
    return-object v5

    .line 90
    .end local v4    # "parser":Lcom/google/gdata/wireformats/WireFormatParser;
    :catch_0
    move-exception v3

    .line 91
    .local v3, "ice":Ljava/nio/charset/IllegalCharsetNameException;
    new-instance v7, Lcom/google/gdata/util/ParseException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid charset:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0, p2}, Lcom/google/gdata/wireformats/input/ElementParser;->getCharset(Lcom/google/gdata/wireformats/input/InputProperties;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v3}, Lcom/google/gdata/util/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 92
    .end local v3    # "ice":Ljava/nio/charset/IllegalCharsetNameException;
    :catch_1
    move-exception v6

    .line 93
    .local v6, "uce":Ljava/nio/charset/UnsupportedCharsetException;
    new-instance v7, Lcom/google/gdata/util/ParseException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid charset:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0, p2}, Lcom/google/gdata/wireformats/input/ElementParser;->getCharset(Lcom/google/gdata/wireformats/input/InputProperties;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v6}, Lcom/google/gdata/util/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 94
    .end local v6    # "uce":Ljava/nio/charset/UnsupportedCharsetException;
    :catch_2
    move-exception v0

    .line 95
    .local v0, "e":Lcom/google/gdata/wireformats/ContentCreationException;
    new-instance v7, Lcom/google/gdata/util/ParseException;

    const-string v8, "Unable to create element to parse into."

    invoke-direct {v7, v8, v0}, Lcom/google/gdata/util/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 96
    .end local v0    # "e":Lcom/google/gdata/wireformats/ContentCreationException;
    :catch_3
    move-exception v0

    .line 97
    .local v0, "e":Lcom/google/gdata/wireformats/ContentValidationException;
    new-instance v7, Lcom/google/gdata/util/ParseException;

    const-string v8, "Error trying to parse element."

    invoke-direct {v7, v8, v0}, Lcom/google/gdata/util/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 100
    .end local v0    # "e":Lcom/google/gdata/wireformats/ContentValidationException;
    .end local v1    # "element":Lcom/google/gdata/model/Element;
    .end local v2    # "format":Lcom/google/gdata/wireformats/WireFormat;
    :cond_0
    new-instance v7, Lcom/google/gdata/wireformats/ContentCreationException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Result class is not an Element type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/google/gdata/wireformats/ContentCreationException;-><init>(Ljava/lang/String;)V

    throw v7
.end method
