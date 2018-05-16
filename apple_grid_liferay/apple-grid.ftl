<div class="fluid-container">
    <div class="apple-grid">
        <div class="row flex-container">
            <#if title.getSiblings()?has_content>
                <#list title.getSiblings() as cur_title>
                    <#if (cur_title.linkToPage.getFriendlyUrl())?has_content>
                        <#assign link_page = cur_title.linkToPage.getFriendlyUrl() />
                    <#else>
                        <#assign link_page = "" />
                    </#if>
                        
                    <div 
                        class="
                        <#if cur_title.selectDimension.getData() == 'one-column'>
                            col-sx-12 col-md-12 one-column 
                        <#else>
                            col-sx-12 col-md-6 two-column
                        </#if>"
                    >
                        <div 
                            class="${cur_title.selectColor.getData()}
                            <#if (cur_title.textWhite.getData())?has_content>
                                <#assign text_white = true />
                            <#else>
                                <#assign text_white = false />
                            </#if>
                            <#if text_white>
                                text-white
                            </#if>"
                        >
                            
                            <div class="text-column">
                                <h1>
                                    <a href="${link_page}">
                                        <#if (cur_title.getData())?has_content>
                                            ${cur_title.getData()}
                                        <#else>
                                            <#if (cur_title.imageTitle.getData())?has_content>
                                                <img src="${cur_title.imageTitle.getData()}" alt="">
                                            </#if>
                                        </#if>
                                    </a>
                                </h1>
                                <#if (cur_title.subtitle.getData())?has_content>
                                    <h5>
                                        <a href="${link_page}">
                                            ${cur_title.subtitle.getData()}
                                        </a>
                                    </h5>
                                </#if>
                            </div>
                            <#if (cur_title.image.getData())?has_content>
                                <#assign url_image = cur_title.image.getData() />
                            <#else>
                                <#assign url_image = "" />
                            </#if>
                            <div 
                                class="image-column-background" 
                                style="background-image: url('${url_image}');"
                            >
                                <a href="${link_page}"></a>
                            </div>
                        </div>
                    </div>
                </#list>
            </#if>
        </div>
    </div>
</div>

<style>
    #_com_liferay_journal_content_web_portlet_JournalContentPortlet_INSTANCE_h0diClqJ2kHI_kldx_column1_0_menu{
        position: absolute;
        right: 1px;
        z-index: 1;
    }

    
    a,
    a:hover{
        color: black;
        text-decoration: none;
    }
                        
    .apple-grid{
        text-align: center;
        padding-top: 12px;
        color: black;
        font-family: "SF Pro Display","SF Pro Icons","Helvetica Neue","Helvetica","Arial",sans-serif;
    }
    
    .one-column,
    .two-column{
        padding-bottom: 12px;
    }
    
    .two-column{
        padding-right: 12px;
        padding-left: 12px;
    }
    
    div.two-column + div.two-column{
        padding-left: 0;
    }
    
    #content .row{
        margin: 0;
    }
    
    .one-column{
        padding-left: 0;
        padding-right: 0;
    }
                            
    .two-column > div{
        min-height: 100%;
    }
    
    .color-light-grey{
        background-color: #F5F5F5;
    }
                        
    .color-grey{
         background-color: #EEEEEE;
    }
                        
    .color-cream{
        background-color: #FAFAFA;
    }
                            
    .color-red{
        background-color: #b00e23;
    }
                        
    .color-blue{
        background: linear-gradient(to bottom, #498393 0%, #498393 10%, #98d8e8 100%);
    }
                        
    .text-white,
    .text-white a,
    .text-white a:hover{
        color: white;
    }
                        
    .text-column{
        min-height: 182px;
        padding-left: 12px;
        padding-right: 12px;
    }
                        
    .image-column-background{
        background-repeat: no-repeat;
        background-size: contain;
        background-position: center bottom;
    }
                        
    .image-column-background::after{
        content: "";
        display: block;
        padding-top: 90%;
    }
                        
    .one-column .image-column-background::after{
        padding-top: 40%;
    }
    
    h1, h5{
        margin: 0;
    }

    .apple-grid h1{
        font-size: 40px;
        padding-top: 30px;
    }
                        
    .apple-grid h5{
        font-size: 21px;
        padding-top: 4px;
        width: 100%;
    }
    
    .apple-grid img{
        margin-bottom: 0px;
        padding-top: 0px;
    }
                        
    @media screen and (max-width: 991px){
        div.two-column,
        div.one-column{
            padding-right: 0;
            padding-left: 0;
            width: 100%;
        }
                        
        .apple-grid h1{
            font-size: 32px;
            padding-top: 22px;
        }
                        
        .apple-grid h5{
            font-size: 19px;
            padding-top: 3px;
        }
                        
        .iPad h5{
            width: 180px;
            margin-left: auto;
            margin-right: auto;
        }
        
        .apple-grid img{
            padding-top: 22px;
        }
    }
                        
    .flex-container{
        display: flex;
        flex-direction: row;
        flex-wrap: wrap;
    }
</style>