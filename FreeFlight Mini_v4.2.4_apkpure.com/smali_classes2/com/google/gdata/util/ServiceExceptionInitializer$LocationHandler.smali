.class Lcom/google/gdata/util/ServiceExceptionInitializer$LocationHandler;
.super Lcom/google/gdata/util/XmlParser$ElementHandler;
.source "ServiceExceptionInitializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/util/ServiceExceptionInitializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationHandler"
.end annotation


# instance fields
.field private locationType:Lcom/google/gdata/util/ErrorContent$LocationType;

.field final synthetic this$0:Lcom/google/gdata/util/ServiceExceptionInitializer;


# direct methods
.method private constructor <init>(Lcom/google/gdata/util/ServiceExceptionInitializer;)V
    .locals 1

    .prologue
    .line 228
    iput-object p1, p0, Lcom/google/gdata/util/ServiceExceptionInitializer$LocationHandler;->this$0:Lcom/google/gdata/util/ServiceExceptionInitializer;

    invoke-direct {p0}, Lcom/google/gdata/util/XmlParser$ElementHandler;-><init>()V

    .line 230
    sget-object v0, Lcom/google/gdata/util/ErrorContent$LocationType;->OTHER:Lcom/google/gdata/util/ErrorContent$LocationType;

    iput-object v0, p0, Lcom/google/gdata/util/ServiceExceptionInitializer$LocationHandler;->locationType:Lcom/google/gdata/util/ErrorContent$LocationType;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/gdata/util/ServiceExceptionInitializer;Lcom/google/gdata/util/ServiceExceptionInitializer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/gdata/util/ServiceExceptionInitializer;
    .param p2, "x1"    # Lcom/google/gdata/util/ServiceExceptionInitializer$1;

    .prologue
    .line 228
    invoke-direct {p0, p1}, Lcom/google/gdata/util/ServiceExceptionInitializer$LocationHandler;-><init>(Lcom/google/gdata/util/ServiceExceptionInitializer;)V

    return-void
.end method


# virtual methods
.method public processAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 235
    const-string v0, "type"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    invoke-static {p3}, Lcom/google/gdata/util/ErrorContent$LocationType;->fromString(Ljava/lang/String;)Lcom/google/gdata/util/ErrorContent$LocationType;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/util/ServiceExceptionInitializer$LocationHandler;->locationType:Lcom/google/gdata/util/ErrorContent$LocationType;

    .line 238
    :cond_0
    return-void
.end method

.method public processEndElement()V
    .locals 3

    .prologue
    .line 242
    iget-object v0, p0, Lcom/google/gdata/util/ServiceExceptionInitializer$LocationHandler;->this$0:Lcom/google/gdata/util/ServiceExceptionInitializer;

    invoke-static {v0}, Lcom/google/gdata/util/ServiceExceptionInitializer;->access$1000(Lcom/google/gdata/util/ServiceExceptionInitializer;)Lcom/google/gdata/util/ServiceException;

    move-result-object v0

    iget-object v0, v0, Lcom/google/gdata/util/ServiceException;->errorElement:Lcom/google/gdata/util/ErrorElement;

    iget-object v1, p0, Lcom/google/gdata/util/ServiceExceptionInitializer$LocationHandler;->value:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/gdata/util/ServiceExceptionInitializer$LocationHandler;->locationType:Lcom/google/gdata/util/ErrorContent$LocationType;

    invoke-virtual {v0, v1, v2}, Lcom/google/gdata/util/ErrorElement;->setLocation(Ljava/lang/String;Lcom/google/gdata/util/ErrorContent$LocationType;)Lcom/google/gdata/util/ErrorElement;

    .line 243
    return-void
.end method
