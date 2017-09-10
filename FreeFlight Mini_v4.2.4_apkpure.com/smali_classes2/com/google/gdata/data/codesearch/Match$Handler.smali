.class Lcom/google/gdata/data/codesearch/Match$Handler;
.super Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;
.source "Match.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/codesearch/Match;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Handler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/gdata/data/codesearch/Match;


# direct methods
.method public constructor <init>(Lcom/google/gdata/data/codesearch/Match;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 1
    .param p2, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/google/gdata/data/codesearch/Match$Handler;->this$0:Lcom/google/gdata/data/codesearch/Match;

    .line 96
    const-class v0, Lcom/google/gdata/data/codesearch/Match;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;-><init>(Lcom/google/gdata/data/ExtensionPoint;Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/Class;)V

    .line 97
    return-void
.end method


# virtual methods
.method public processAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 104
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    const-string v0, "lineNumber"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/google/gdata/data/codesearch/Match$Handler;->this$0:Lcom/google/gdata/data/codesearch/Match;

    iput-object p3, v0, Lcom/google/gdata/data/codesearch/Match;->lineNumber:Ljava/lang/String;

    .line 109
    :cond_0
    return-void
.end method

.method public processEndElement()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/gdata/data/codesearch/Match$Handler;->this$0:Lcom/google/gdata/data/codesearch/Match;

    iget-object v0, v0, Lcom/google/gdata/data/codesearch/Match;->lineNumber:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Lcom/google/gdata/util/ParseException;

    const-string v1, "http://schemas.google.com/codesearch/2006match/@lineNumber is required."

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/data/codesearch/Match$Handler;->this$0:Lcom/google/gdata/data/codesearch/Match;

    new-instance v1, Lcom/google/gdata/data/HtmlTextConstruct;

    iget-object v2, p0, Lcom/google/gdata/data/codesearch/Match$Handler;->value:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/google/gdata/data/HtmlTextConstruct;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/google/gdata/data/codesearch/Match;->lineText:Lcom/google/gdata/data/HtmlTextConstruct;

    .line 118
    return-void
.end method
