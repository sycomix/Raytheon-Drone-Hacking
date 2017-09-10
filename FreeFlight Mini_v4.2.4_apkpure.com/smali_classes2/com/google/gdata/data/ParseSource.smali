.class public Lcom/google/gdata/data/ParseSource;
.super Ljava/lang/Object;
.source "ParseSource.java"


# instance fields
.field private final eventSource:Lcom/google/gdata/data/XmlEventSource;

.field private final inputStream:Ljava/io/InputStream;

.field private final reader:Ljava/io/Reader;


# direct methods
.method public constructor <init>(Lcom/google/gdata/data/XmlEventSource;)V
    .locals 1
    .param p1, "eventSource"    # Lcom/google/gdata/data/XmlEventSource;

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/google/gdata/data/ParseSource;->eventSource:Lcom/google/gdata/data/XmlEventSource;

    .line 57
    iput-object v0, p0, Lcom/google/gdata/data/ParseSource;->reader:Ljava/io/Reader;

    .line 58
    iput-object v0, p0, Lcom/google/gdata/data/ParseSource;->inputStream:Ljava/io/InputStream;

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/google/gdata/data/ParseSource;->inputStream:Ljava/io/InputStream;

    .line 48
    iput-object v0, p0, Lcom/google/gdata/data/ParseSource;->reader:Ljava/io/Reader;

    .line 49
    iput-object v0, p0, Lcom/google/gdata/data/ParseSource;->eventSource:Lcom/google/gdata/data/XmlEventSource;

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1
    .param p1, "reader"    # Ljava/io/Reader;

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/google/gdata/data/ParseSource;->reader:Ljava/io/Reader;

    .line 39
    iput-object v0, p0, Lcom/google/gdata/data/ParseSource;->inputStream:Ljava/io/InputStream;

    .line 40
    iput-object v0, p0, Lcom/google/gdata/data/ParseSource;->eventSource:Lcom/google/gdata/data/XmlEventSource;

    .line 41
    return-void
.end method


# virtual methods
.method public final getEventSource()Lcom/google/gdata/data/XmlEventSource;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/gdata/data/ParseSource;->eventSource:Lcom/google/gdata/data/XmlEventSource;

    return-object v0
.end method

.method public final getInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/gdata/data/ParseSource;->inputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public final getReader()Ljava/io/Reader;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/gdata/data/ParseSource;->reader:Ljava/io/Reader;

    return-object v0
.end method
