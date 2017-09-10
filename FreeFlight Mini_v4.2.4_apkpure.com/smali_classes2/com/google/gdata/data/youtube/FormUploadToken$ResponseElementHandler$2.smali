.class Lcom/google/gdata/data/youtube/FormUploadToken$ResponseElementHandler$2;
.super Lcom/google/gdata/util/XmlParser$ElementHandler;
.source "FormUploadToken.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/gdata/data/youtube/FormUploadToken$ResponseElementHandler;->getChildHandler(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/gdata/data/youtube/FormUploadToken$ResponseElementHandler;


# direct methods
.method constructor <init>(Lcom/google/gdata/data/youtube/FormUploadToken$ResponseElementHandler;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/google/gdata/data/youtube/FormUploadToken$ResponseElementHandler$2;->this$0:Lcom/google/gdata/data/youtube/FormUploadToken$ResponseElementHandler;

    invoke-direct {p0}, Lcom/google/gdata/util/XmlParser$ElementHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public processEndElement()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/gdata/data/youtube/FormUploadToken$ResponseElementHandler$2;->this$0:Lcom/google/gdata/data/youtube/FormUploadToken$ResponseElementHandler;

    iget-object v1, p0, Lcom/google/gdata/data/youtube/FormUploadToken$ResponseElementHandler$2;->value:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/gdata/data/youtube/FormUploadToken$ResponseElementHandler;->access$202(Lcom/google/gdata/data/youtube/FormUploadToken$ResponseElementHandler;Ljava/lang/String;)Ljava/lang/String;

    .line 114
    return-void
.end method
