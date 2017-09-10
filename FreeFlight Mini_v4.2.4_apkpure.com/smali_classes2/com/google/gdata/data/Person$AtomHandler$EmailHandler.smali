.class Lcom/google/gdata/data/Person$AtomHandler$EmailHandler;
.super Lcom/google/gdata/util/XmlParser$ElementHandler;
.source "Person.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/Person$AtomHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EmailHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/gdata/data/Person$AtomHandler;


# direct methods
.method constructor <init>(Lcom/google/gdata/data/Person$AtomHandler;)V
    .locals 0

    .prologue
    .line 279
    iput-object p1, p0, Lcom/google/gdata/data/Person$AtomHandler$EmailHandler;->this$1:Lcom/google/gdata/data/Person$AtomHandler;

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
    .line 284
    iget-object v0, p0, Lcom/google/gdata/data/Person$AtomHandler$EmailHandler;->this$1:Lcom/google/gdata/data/Person$AtomHandler;

    iget-object v0, v0, Lcom/google/gdata/data/Person$AtomHandler;->this$0:Lcom/google/gdata/data/Person;

    iget-object v0, v0, Lcom/google/gdata/data/Person;->email:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 285
    new-instance v0, Lcom/google/gdata/util/ParseException;

    sget-object v1, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v1, v1, Lcom/google/gdata/client/CoreErrorDomain;->duplicateEmail:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    throw v0

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/data/Person$AtomHandler$EmailHandler;->value:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 290
    new-instance v0, Lcom/google/gdata/util/ParseException;

    sget-object v1, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v1, v1, Lcom/google/gdata/client/CoreErrorDomain;->emailValueRequired:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    throw v0

    .line 294
    :cond_1
    iget-object v0, p0, Lcom/google/gdata/data/Person$AtomHandler$EmailHandler;->this$1:Lcom/google/gdata/data/Person$AtomHandler;

    iget-object v0, v0, Lcom/google/gdata/data/Person$AtomHandler;->this$0:Lcom/google/gdata/data/Person;

    iget-object v1, p0, Lcom/google/gdata/data/Person$AtomHandler$EmailHandler;->value:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/gdata/data/Person;->email:Ljava/lang/String;

    .line 295
    return-void
.end method
