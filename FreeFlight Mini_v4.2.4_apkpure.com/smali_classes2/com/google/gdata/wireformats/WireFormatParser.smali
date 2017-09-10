.class public interface abstract Lcom/google/gdata/wireformats/WireFormatParser;
.super Ljava/lang/Object;
.source "WireFormatParser.java"


# virtual methods
.method public abstract parse(Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ParseException;,
            Lcom/google/gdata/wireformats/ContentCreationException;,
            Lcom/google/gdata/wireformats/ContentValidationException;
        }
    .end annotation
.end method
