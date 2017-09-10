.class public Lcom/google/api/gbase/client/GmAttributes$GmAttribute;
.super Ljava/lang/Object;
.source "GmAttributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/gbase/client/GmAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GmAttribute"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/gbase/client/GmAttributes$GmAttribute$Importance;
    }
.end annotation


# instance fields
.field private final attributeId:Lcom/google/api/gbase/client/GoogleBaseAttributeId;

.field private final importance:Lcom/google/api/gbase/client/GmAttributes$GmAttribute$Importance;


# direct methods
.method public constructor <init>(Lcom/google/api/gbase/client/GoogleBaseAttributeId;Lcom/google/api/gbase/client/GmAttributes$GmAttribute$Importance;)V
    .locals 2
    .param p1, "attributeId"    # Lcom/google/api/gbase/client/GoogleBaseAttributeId;
    .param p2, "importance"    # Lcom/google/api/gbase/client/GmAttributes$GmAttribute$Importance;

    .prologue
    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    if-nez p1, :cond_0

    .line 243
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "AttributeId is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 246
    :cond_0
    iput-object p1, p0, Lcom/google/api/gbase/client/GmAttributes$GmAttribute;->attributeId:Lcom/google/api/gbase/client/GoogleBaseAttributeId;

    .line 247
    iput-object p2, p0, Lcom/google/api/gbase/client/GmAttributes$GmAttribute;->importance:Lcom/google/api/gbase/client/GmAttributes$GmAttribute$Importance;

    .line 248
    return-void
.end method


# virtual methods
.method public getAttributeId()Lcom/google/api/gbase/client/GoogleBaseAttributeId;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/google/api/gbase/client/GmAttributes$GmAttribute;->attributeId:Lcom/google/api/gbase/client/GoogleBaseAttributeId;

    return-object v0
.end method

.method public getImportance()Lcom/google/api/gbase/client/GmAttributes$GmAttribute$Importance;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/google/api/gbase/client/GmAttributes$GmAttribute;->importance:Lcom/google/api/gbase/client/GmAttributes$GmAttribute$Importance;

    return-object v0
.end method
