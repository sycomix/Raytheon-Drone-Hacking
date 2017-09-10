.class Lcom/google/gdata/data/media/GDataContentHandler$4;
.super Lcom/google/gdata/wireformats/output/ForwardingOutputProperties;
.source "GDataContentHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/gdata/data/media/GDataContentHandler;->writeTo(Ljava/lang/Object;Ljava/lang/String;Ljava/io/OutputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/gdata/data/media/GDataContentHandler;

.field final synthetic val$altFormat:Lcom/google/gdata/wireformats/AltFormat;


# direct methods
.method constructor <init>(Lcom/google/gdata/data/media/GDataContentHandler;Lcom/google/gdata/wireformats/output/OutputProperties;Lcom/google/gdata/wireformats/AltFormat;)V
    .locals 0
    .param p2, "x0"    # Lcom/google/gdata/wireformats/output/OutputProperties;

    .prologue
    .line 242
    iput-object p1, p0, Lcom/google/gdata/data/media/GDataContentHandler$4;->this$0:Lcom/google/gdata/data/media/GDataContentHandler;

    iput-object p3, p0, Lcom/google/gdata/data/media/GDataContentHandler$4;->val$altFormat:Lcom/google/gdata/wireformats/AltFormat;

    invoke-direct {p0, p2}, Lcom/google/gdata/wireformats/output/ForwardingOutputProperties;-><init>(Lcom/google/gdata/wireformats/output/OutputProperties;)V

    return-void
.end method


# virtual methods
.method public getContentType()Lcom/google/gdata/util/ContentType;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/google/gdata/data/media/GDataContentHandler$4;->val$altFormat:Lcom/google/gdata/wireformats/AltFormat;

    invoke-virtual {v0}, Lcom/google/gdata/wireformats/AltFormat;->getContentType()Lcom/google/gdata/util/ContentType;

    move-result-object v0

    return-object v0
.end method
