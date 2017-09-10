.class Lcom/google/gdata/data/codesearch/File$Handler;
.super Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;
.source "File.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/codesearch/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Handler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/gdata/data/codesearch/File;


# direct methods
.method public constructor <init>(Lcom/google/gdata/data/codesearch/File;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 1
    .param p2, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/google/gdata/data/codesearch/File$Handler;->this$0:Lcom/google/gdata/data/codesearch/File;

    .line 84
    const-class v0, Lcom/google/gdata/data/codesearch/File;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;-><init>(Lcom/google/gdata/data/ExtensionPoint;Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/Class;)V

    .line 85
    return-void
.end method


# virtual methods
.method public processAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 92
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    const-string v0, "name"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/google/gdata/data/codesearch/File$Handler;->this$0:Lcom/google/gdata/data/codesearch/File;

    iput-object p3, v0, Lcom/google/gdata/data/codesearch/File;->name:Ljava/lang/String;

    .line 97
    :cond_0
    return-void
.end method

.method public processEndElement()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/gdata/data/codesearch/File$Handler;->this$0:Lcom/google/gdata/data/codesearch/File;

    iget-object v0, v0, Lcom/google/gdata/data/codesearch/File;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Lcom/google/gdata/util/ParseException;

    const-string v1, "http://schemas.google.com/codesearch/2006file/@name is required."

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_0
    invoke-super {p0}, Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;->processEndElement()V

    .line 107
    return-void
.end method
