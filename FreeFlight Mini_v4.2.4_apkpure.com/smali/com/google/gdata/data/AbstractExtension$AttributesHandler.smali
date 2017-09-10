.class public Lcom/google/gdata/data/AbstractExtension$AttributesHandler;
.super Lcom/google/gdata/util/XmlParser$ElementHandler;
.source "AbstractExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/AbstractExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AttributesHandler"
.end annotation


# instance fields
.field private final helper:Lcom/google/gdata/data/AttributeHelper;

.field final synthetic this$0:Lcom/google/gdata/data/AbstractExtension;


# direct methods
.method public constructor <init>(Lcom/google/gdata/data/AbstractExtension;Lorg/xml/sax/Attributes;)V
    .locals 2
    .param p2, "attrs"    # Lorg/xml/sax/Attributes;

    .prologue
    .line 248
    iput-object p1, p0, Lcom/google/gdata/data/AbstractExtension$AttributesHandler;->this$0:Lcom/google/gdata/data/AbstractExtension;

    invoke-direct {p0}, Lcom/google/gdata/util/XmlParser$ElementHandler;-><init>()V

    .line 249
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/gdata/data/AbstractExtension$AttributesHandler;->helper:Lcom/google/gdata/data/AttributeHelper;

    .line 250
    invoke-static {p1}, Lcom/google/gdata/data/AbstractExtension;->access$000(Lcom/google/gdata/data/AbstractExtension;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 251
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot parse into immutable instance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :cond_0
    new-instance v0, Lcom/google/gdata/data/AttributeHelper;

    invoke-direct {v0, p2}, Lcom/google/gdata/data/AttributeHelper;-><init>(Lorg/xml/sax/Attributes;)V

    goto :goto_0

    .line 253
    :cond_1
    return-void
.end method


# virtual methods
.method public processEndElement()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 261
    iget-object v1, p0, Lcom/google/gdata/data/AbstractExtension$AttributesHandler;->helper:Lcom/google/gdata/data/AttributeHelper;

    if-eqz v1, :cond_0

    .line 262
    iget-object v1, p0, Lcom/google/gdata/data/AbstractExtension$AttributesHandler;->helper:Lcom/google/gdata/data/AttributeHelper;

    iget-object v2, p0, Lcom/google/gdata/data/AbstractExtension$AttributesHandler;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/gdata/data/AttributeHelper;->setContent(Ljava/lang/String;)V

    .line 263
    iget-object v1, p0, Lcom/google/gdata/data/AbstractExtension$AttributesHandler;->this$0:Lcom/google/gdata/data/AbstractExtension;

    iget-object v2, p0, Lcom/google/gdata/data/AbstractExtension$AttributesHandler;->helper:Lcom/google/gdata/data/AttributeHelper;

    invoke-virtual {v1, v2}, Lcom/google/gdata/data/AbstractExtension;->consumeAttributes(Lcom/google/gdata/data/AttributeHelper;)V

    .line 266
    :cond_0
    invoke-static {}, Lcom/google/gdata/data/AbstractExtension;->isStrictValidation()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 269
    :try_start_0
    iget-object v1, p0, Lcom/google/gdata/data/AbstractExtension$AttributesHandler;->this$0:Lcom/google/gdata/data/AbstractExtension;

    invoke-virtual {v1}, Lcom/google/gdata/data/AbstractExtension;->validate()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    :cond_1
    return-void

    .line 270
    :catch_0
    move-exception v0

    .line 271
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-instance v1, Lcom/google/gdata/util/ParseException;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/gdata/util/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
