.class Lcom/google/gdata/data/media/mediarss/AbstractTextElement$2;
.super Lcom/google/gdata/data/HtmlTextConstruct$AtomHandler;
.source "AbstractTextElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/gdata/data/media/mediarss/AbstractTextElement;->getHandler(Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/gdata/data/media/mediarss/AbstractTextElement;

.field final synthetic val$attrsHelper:Lcom/google/gdata/data/AttributeHelper;


# direct methods
.method constructor <init>(Lcom/google/gdata/data/media/mediarss/AbstractTextElement;Lcom/google/gdata/data/HtmlTextConstruct;Lcom/google/gdata/data/AttributeHelper;)V
    .locals 0
    .param p2, "x0"    # Lcom/google/gdata/data/HtmlTextConstruct;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/google/gdata/data/media/mediarss/AbstractTextElement$2;->this$0:Lcom/google/gdata/data/media/mediarss/AbstractTextElement;

    iput-object p3, p0, Lcom/google/gdata/data/media/mediarss/AbstractTextElement$2;->val$attrsHelper:Lcom/google/gdata/data/AttributeHelper;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p2}, Lcom/google/gdata/data/HtmlTextConstruct$AtomHandler;-><init>(Lcom/google/gdata/data/HtmlTextConstruct;)V

    return-void
.end method


# virtual methods
.method public processEndElement()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 114
    invoke-super {p0}, Lcom/google/gdata/data/HtmlTextConstruct$AtomHandler;->processEndElement()V

    .line 115
    iget-object v0, p0, Lcom/google/gdata/data/media/mediarss/AbstractTextElement$2;->val$attrsHelper:Lcom/google/gdata/data/AttributeHelper;

    invoke-virtual {v0}, Lcom/google/gdata/data/AttributeHelper;->assertAllConsumed()V

    .line 116
    return-void
.end method
