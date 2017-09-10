.class public interface abstract Lcom/google/gdata/model/ElementCreator;
.super Ljava/lang/Object;
.source "ElementCreator.java"

# interfaces
.implements Lcom/google/gdata/model/MetadataCreator;


# virtual methods
.method public abstract adapt(Ljava/lang/String;Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;)",
            "Lcom/google/gdata/model/ElementCreator;"
        }
    .end annotation
.end method

.method public abstract addAttribute(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/AttributeCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/AttributeKey",
            "<*>;)",
            "Lcom/google/gdata/model/AttributeCreator;"
        }
    .end annotation
.end method

.method public abstract addElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;)",
            "Lcom/google/gdata/model/ElementCreator;"
        }
    .end annotation
.end method

.method public abstract addUndeclaredAttributeMarker()Lcom/google/gdata/model/ElementCreator;
.end method

.method public abstract addUndeclaredElementMarker()Lcom/google/gdata/model/ElementCreator;
.end method

.method public varargs abstract blacklistElements([Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;)",
            "Lcom/google/gdata/model/ElementCreator;"
        }
    .end annotation
.end method

.method public abstract flatten()Lcom/google/gdata/model/ElementCreator;
.end method

.method public abstract moveAttribute(Lcom/google/gdata/model/AttributeKey;Lcom/google/gdata/model/Path;)Lcom/google/gdata/model/AttributeCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/AttributeKey",
            "<*>;",
            "Lcom/google/gdata/model/Path;",
            ")",
            "Lcom/google/gdata/model/AttributeCreator;"
        }
    .end annotation
.end method

.method public abstract moveElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Path;)Lcom/google/gdata/model/ElementCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;",
            "Lcom/google/gdata/model/Path;",
            ")",
            "Lcom/google/gdata/model/ElementCreator;"
        }
    .end annotation
.end method

.method public varargs abstract orderAndWhitelistAttributes([Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/ElementCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/gdata/model/AttributeKey",
            "<*>;)",
            "Lcom/google/gdata/model/ElementCreator;"
        }
    .end annotation
.end method

.method public varargs abstract orderAndWhitelistElements([Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;)",
            "Lcom/google/gdata/model/ElementCreator;"
        }
    .end annotation
.end method

.method public abstract replaceAttribute(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/AttributeCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/AttributeKey",
            "<*>;)",
            "Lcom/google/gdata/model/AttributeCreator;"
        }
    .end annotation
.end method

.method public abstract replaceElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;)",
            "Lcom/google/gdata/model/ElementCreator;"
        }
    .end annotation
.end method

.method public abstract setCardinality(Lcom/google/gdata/model/ElementMetadata$Cardinality;)Lcom/google/gdata/model/ElementCreator;
.end method

.method public abstract setContentRequired(Z)Lcom/google/gdata/model/ElementCreator;
.end method

.method public abstract setMultipleVirtualElement(Lcom/google/gdata/model/ElementMetadata$MultipleVirtualElement;)Lcom/google/gdata/model/ElementCreator;
.end method

.method public abstract setName(Lcom/google/gdata/model/QName;)Lcom/google/gdata/model/ElementCreator;
.end method

.method public abstract setProperties(Ljava/lang/Object;)Lcom/google/gdata/model/ElementCreator;
.end method

.method public abstract setRequired(Z)Lcom/google/gdata/model/ElementCreator;
.end method

.method public abstract setSingleVirtualElement(Lcom/google/gdata/model/ElementMetadata$SingleVirtualElement;)Lcom/google/gdata/model/ElementCreator;
.end method

.method public abstract setValidator(Lcom/google/gdata/model/ElementValidator;)Lcom/google/gdata/model/ElementCreator;
.end method

.method public abstract setVirtualValue(Lcom/google/gdata/model/Metadata$VirtualValue;)Lcom/google/gdata/model/ElementCreator;
.end method

.method public abstract setVisible(Z)Lcom/google/gdata/model/ElementCreator;
.end method

.method public varargs abstract whitelistAttributes([Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/ElementCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/gdata/model/AttributeKey",
            "<*>;)",
            "Lcom/google/gdata/model/ElementCreator;"
        }
    .end annotation
.end method

.method public varargs abstract whitelistElements([Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;)",
            "Lcom/google/gdata/model/ElementCreator;"
        }
    .end annotation
.end method
