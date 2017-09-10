.class public abstract Lcom/google/gdata/wireformats/WireFormat;
.super Ljava/lang/Object;
.source "WireFormat.java"


# static fields
.field public static final ALL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/wireformats/WireFormat;",
            ">;"
        }
    .end annotation
.end field

.field public static final XML:Lcom/google/gdata/wireformats/XmlWireFormat;


# instance fields
.field protected final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    new-instance v0, Lcom/google/gdata/wireformats/XmlWireFormat;

    invoke-direct {v0}, Lcom/google/gdata/wireformats/XmlWireFormat;-><init>()V

    sput-object v0, Lcom/google/gdata/wireformats/WireFormat;->XML:Lcom/google/gdata/wireformats/XmlWireFormat;

    .line 44
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/gdata/wireformats/WireFormat;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/gdata/wireformats/WireFormat;->XML:Lcom/google/gdata/wireformats/XmlWireFormat;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/wireformats/WireFormat;->ALL:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/google/gdata/wireformats/WireFormat;->name:Ljava/lang/String;

    .line 60
    return-void
.end method


# virtual methods
.method public abstract createGenerator(Lcom/google/gdata/wireformats/output/OutputProperties;Ljava/io/Writer;Ljava/nio/charset/Charset;Z)Lcom/google/gdata/wireformats/WireFormatGenerator;
.end method

.method public createParser(Lcom/google/gdata/wireformats/input/InputProperties;Lcom/google/gdata/data/XmlEventSource;)Lcom/google/gdata/wireformats/WireFormatParser;
    .locals 2
    .param p1, "inProps"    # Lcom/google/gdata/wireformats/input/InputProperties;
    .param p2, "source"    # Lcom/google/gdata/data/XmlEventSource;

    .prologue
    .line 100
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Wire format does not support xml event sources."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract createParser(Lcom/google/gdata/wireformats/input/InputProperties;Ljava/io/Reader;Ljava/nio/charset/Charset;)Lcom/google/gdata/wireformats/WireFormatParser;
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/gdata/wireformats/WireFormat;->name:Ljava/lang/String;

    return-object v0
.end method
