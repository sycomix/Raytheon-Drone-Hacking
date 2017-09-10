.class Lcom/google/gdata/data/extensions/Rating$Handler;
.super Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;
.source "Rating.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/extensions/Rating;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Handler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/gdata/data/extensions/Rating;


# direct methods
.method public constructor <init>(Lcom/google/gdata/data/extensions/Rating;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 1
    .param p2, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/google/gdata/data/extensions/Rating$Handler;->this$0:Lcom/google/gdata/data/extensions/Rating;

    .line 211
    const-class v0, Lcom/google/gdata/data/extensions/Rating;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;-><init>(Lcom/google/gdata/data/ExtensionPoint;Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/Class;)V

    .line 212
    return-void
.end method


# virtual methods
.method public processAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 220
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    const-string v0, "value"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 222
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Rating$Handler;->this$0:Lcom/google/gdata/data/extensions/Rating;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/gdata/data/extensions/Rating;->rating:Ljava/lang/Integer;

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 223
    :cond_1
    const-string v0, "max"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 224
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Rating$Handler;->this$0:Lcom/google/gdata/data/extensions/Rating;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/gdata/data/extensions/Rating;->max:Ljava/lang/Integer;

    goto :goto_0

    .line 225
    :cond_2
    const-string v0, "min"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 226
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Rating$Handler;->this$0:Lcom/google/gdata/data/extensions/Rating;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/gdata/data/extensions/Rating;->min:Ljava/lang/Integer;

    goto :goto_0

    .line 227
    :cond_3
    const-string v0, "rel"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 228
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Rating$Handler;->this$0:Lcom/google/gdata/data/extensions/Rating;

    iput-object p3, v0, Lcom/google/gdata/data/extensions/Rating;->rel:Ljava/lang/String;

    goto :goto_0

    .line 229
    :cond_4
    const-string v0, "numRaters"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 230
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Rating$Handler;->this$0:Lcom/google/gdata/data/extensions/Rating;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/gdata/data/extensions/Rating;->numRaters:Ljava/lang/Integer;

    goto :goto_0

    .line 231
    :cond_5
    const-string v0, "average"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Rating$Handler;->this$0:Lcom/google/gdata/data/extensions/Rating;

    invoke-static {p3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/google/gdata/data/extensions/Rating;->average:Ljava/lang/Float;

    goto :goto_0
.end method

.method public processEndElement()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 240
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Rating$Handler;->this$0:Lcom/google/gdata/data/extensions/Rating;

    iget-object v0, v0, Lcom/google/gdata/data/extensions/Rating;->rating:Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/gdata/data/extensions/Rating$Handler;->this$0:Lcom/google/gdata/data/extensions/Rating;

    iget-object v0, v0, Lcom/google/gdata/data/extensions/Rating;->average:Ljava/lang/Float;

    if-nez v0, :cond_0

    .line 241
    new-instance v0, Lcom/google/gdata/util/ParseException;

    sget-object v1, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v1, v1, Lcom/google/gdata/client/CoreErrorDomain;->valueOrAverageRequired:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    throw v0

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Rating$Handler;->this$0:Lcom/google/gdata/data/extensions/Rating;

    iget-object v0, v0, Lcom/google/gdata/data/extensions/Rating;->rating:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 246
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Rating$Handler;->this$0:Lcom/google/gdata/data/extensions/Rating;

    iget-object v0, v0, Lcom/google/gdata/data/extensions/Rating;->min:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/gdata/data/extensions/Rating$Handler;->this$0:Lcom/google/gdata/data/extensions/Rating;

    iget-object v0, v0, Lcom/google/gdata/data/extensions/Rating;->rating:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/google/gdata/data/extensions/Rating$Handler;->this$0:Lcom/google/gdata/data/extensions/Rating;

    iget-object v1, v1, Lcom/google/gdata/data/extensions/Rating;->min:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Rating$Handler;->this$0:Lcom/google/gdata/data/extensions/Rating;

    iget-object v0, v0, Lcom/google/gdata/data/extensions/Rating;->max:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/gdata/data/extensions/Rating$Handler;->this$0:Lcom/google/gdata/data/extensions/Rating;

    iget-object v0, v0, Lcom/google/gdata/data/extensions/Rating;->rating:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/google/gdata/data/extensions/Rating$Handler;->this$0:Lcom/google/gdata/data/extensions/Rating;

    iget-object v1, v1, Lcom/google/gdata/data/extensions/Rating;->max:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v0, v1, :cond_3

    .line 247
    :cond_2
    new-instance v0, Lcom/google/gdata/util/ParseException;

    sget-object v1, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v1, v1, Lcom/google/gdata/client/CoreErrorDomain;->invalidValueRatingAttribute:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    throw v0

    .line 252
    :cond_3
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Rating$Handler;->this$0:Lcom/google/gdata/data/extensions/Rating;

    iget-object v0, v0, Lcom/google/gdata/data/extensions/Rating;->average:Ljava/lang/Float;

    if-eqz v0, :cond_6

    .line 253
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Rating$Handler;->this$0:Lcom/google/gdata/data/extensions/Rating;

    iget-object v0, v0, Lcom/google/gdata/data/extensions/Rating;->min:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/gdata/data/extensions/Rating$Handler;->this$0:Lcom/google/gdata/data/extensions/Rating;

    iget-object v0, v0, Lcom/google/gdata/data/extensions/Rating;->average:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/google/gdata/data/extensions/Rating$Handler;->this$0:Lcom/google/gdata/data/extensions/Rating;

    iget-object v1, v1, Lcom/google/gdata/data/extensions/Rating;->min:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Rating$Handler;->this$0:Lcom/google/gdata/data/extensions/Rating;

    iget-object v0, v0, Lcom/google/gdata/data/extensions/Rating;->max:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/gdata/data/extensions/Rating$Handler;->this$0:Lcom/google/gdata/data/extensions/Rating;

    iget-object v0, v0, Lcom/google/gdata/data/extensions/Rating;->average:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/google/gdata/data/extensions/Rating$Handler;->this$0:Lcom/google/gdata/data/extensions/Rating;

    iget-object v1, v1, Lcom/google/gdata/data/extensions/Rating;->max:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    .line 254
    :cond_5
    new-instance v0, Lcom/google/gdata/util/ParseException;

    sget-object v1, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v1, v1, Lcom/google/gdata/client/CoreErrorDomain;->invalidAverageRatingAttribute:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    throw v0

    .line 258
    :cond_6
    return-void
.end method
