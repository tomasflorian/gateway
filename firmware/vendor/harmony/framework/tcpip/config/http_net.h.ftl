<#--
/*******************************************************************************
  HTTP NET Freemarker Template File

  Company:
    Microchip Technology Inc.

  File Name:
    http_net.h.ftl

  Summary:
    HTTP NET Freemarker Template File

  Description:

*******************************************************************************/

/*******************************************************************************
Copyright (c) 2014 released Microchip Technology Inc.  All rights reserved.

Microchip licenses to you the right to use, modify, copy and distribute
Software only when embedded on a Microchip microcontroller or digital signal
controller that is integrated into your product or third party product
(pursuant to the sublicense terms in the accompanying license agreement).

You should refer to the license agreement accompanying this Software for
additional information regarding your rights and obligations.

SOFTWARE AND DOCUMENTATION ARE PROVIDED AS IS  WITHOUT  WARRANTY  OF  ANY  KIND,
EITHER EXPRESS  OR  IMPLIED,  INCLUDING  WITHOUT  LIMITATION,  ANY  WARRANTY  OF
MERCHANTABILITY, TITLE, NON-INFRINGEMENT AND FITNESS FOR A  PARTICULAR  PURPOSE.
IN NO EVENT SHALL MICROCHIP OR  ITS  LICENSORS  BE  LIABLE  OR  OBLIGATED  UNDER
CONTRACT, NEGLIGENCE, STRICT LIABILITY, CONTRIBUTION,  BREACH  OF  WARRANTY,  OR
OTHER LEGAL  EQUITABLE  THEORY  ANY  DIRECT  OR  INDIRECT  DAMAGES  OR  EXPENSES
INCLUDING BUT NOT LIMITED TO ANY  INCIDENTAL,  SPECIAL,  INDIRECT,  PUNITIVE  OR
CONSEQUENTIAL DAMAGES, LOST  PROFITS  OR  LOST  DATA,  COST  OF  PROCUREMENT  OF
SUBSTITUTE  GOODS,  TECHNOLOGY,  SERVICES,  OR  ANY  CLAIMS  BY  THIRD   PARTIES
(INCLUDING BUT NOT LIMITED TO ANY DEFENSE  THEREOF),  OR  OTHER  SIMILAR  COSTS.
*******************************************************************************/
-->
<#if CONFIG_TCPIP_STACK_USE_HTTP_NET_SERVER == true>
/*** HTTP NET Configuration ***/
#define TCPIP_STACK_USE_HTTP_NET_SERVER
#define TCPIP_HTTP_NET_MAX_HEADER_LEN		    		${CONFIG_TCPIP_HTTP_NET_MAX_HEADER_LEN}
#define TCPIP_HTTP_NET_CACHE_LEN		        		"${CONFIG_TCPIP_HTTP_NET_CACHE_LEN}"
#define TCPIP_HTTP_NET_TIMEOUT		            		${CONFIG_TCPIP_HTTP_NET_TIMEOUT}
#define TCPIP_HTTP_NET_MAX_CONNECTIONS		    		${CONFIG_TCPIP_HTTP_NET_MAX_CONNECTIONS}
#define TCPIP_HTTP_NET_DEFAULT_FILE		        		"${CONFIG_TCPIP_HTTP_NET_DEFAULT_FILE}"
#define TCPIP_HTTP_NET_FILENAME_MAX_LEN			        ${CONFIG_TCPIP_HTTP_NET_FILENAME_MAX_LEN}
<#if CONFIG_TCPIP_HTTP_NET_FILE_UPLOAD_ENABLE == true>
#define TCPIP_HTTP_NET_FILE_UPLOAD_ENABLE
#define TCPIP_HTTP_NET_FILE_UPLOAD_NAME				    "${CONFIG_TCPIP_HTTP_NET_FILE_UPLOAD_NAME}"
</#if>
<#if CONFIG_TCPIP_HTTP_NET_USE_POST == true>
#define TCPIP_HTTP_NET_USE_POST
</#if>
<#if CONFIG_TCPIP_HTTP_NET_USE_COOKIES == true>
#define TCPIP_HTTP_NET_USE_COOKIES
</#if>
<#if CONFIG_TCPIP_HTTP_NET_USE_BASE64_DECODE == true>
#define TCPIP_HTTP_NET_USE_BASE64_DECODE
</#if>
<#if CONFIG_TCPIP_HTTP_NET_USE_AUTHENTICATION == true>
#define TCPIP_HTTP_NET_USE_AUTHENTICATION
</#if>
#define TCPIP_HTTP_NET_MAX_DATA_LEN		        		${CONFIG_TCPIP_HTTP_NET_MAX_DATA_LEN}
#define TCPIP_HTTP_NET_SKT_TX_BUFF_SIZE		    		${CONFIG_TCPIP_HTTP_NET_SKT_TX_BUFF_SIZE}
#define TCPIP_HTTP_NET_SKT_RX_BUFF_SIZE		    		${CONFIG_TCPIP_HTTP_NET_SKT_RX_BUFF_SIZE}
#define TCPIP_HTTP_NET_LISTEN_PORT		    		    ${CONFIG_TCPIP_HTTP_NET_LISTEN_PORT}
#define TCPIP_HTTP_NET_CONFIG_FLAGS                       \
<#if CONFIG_TCPIP_HTTP_NET_CONFIG_FLAG_NON_PERSISTENT>
                                                        TCPIP_HTTP_NET_MODULE_FLAG_NON_PERSISTENT |\
</#if>
<#if CONFIG_TCPIP_HTTP_NET_CONFIG_FLAG_NO_DELAY>
                                                        TCPIP_HTTP_NET_MODULE_FLAG_NO_DELAY |\
</#if>
<#if CONFIG_TCPIP_HTTP_NET_CONFIG_FLAG_SECURE_ON>
                                                        TCPIP_HTTP_NET_MODULE_FLAG_SECURE_ON |\
</#if>
<#if CONFIG_TCPIP_HTTP_NET_CONFIG_FLAG_SECURE_OFF>
                                                        TCPIP_HTTP_NET_MODULE_FLAG_SECURE_OFF |\
</#if>
<#if CONFIG_TCPIP_HTTP_NET_CONFIG_FLAG_SECURE_DEFAULT>
                                                        TCPIP_HTTP_NET_MODULE_FLAG_SECURE_DEFAULT |\
</#if>
                                                        TCPIP_HTTP_NET_MODULE_FLAG_DEFAULT
#define TCPIP_HTTP_NET_TASK_RATE					    ${CONFIG_TCPIP_HTTP_NET_TASK_RATE}
#define TCPIP_HTTP_NET_RESPONSE_BUFFER_SIZE				${CONFIG_TCPIP_HTTP_NET_RESPONSE_BUFFER_SIZE}
#define TCPIP_HTTP_NET_COOKIE_BUFFER_SIZE				${CONFIG_TCPIP_HTTP_NET_COOKIE_BUFFER_SIZE}
#define TCPIP_HTTP_NET_FIND_PEEK_BUFF_SIZE				${CONFIG_TCPIP_HTTP_NET_FIND_PEEK_BUFF_SIZE}
#define TCPIP_HTTP_NET_FILE_PROCESS_BUFFER_SIZE         ${CONFIG_TCPIP_HTTP_NET_FILE_PROCESS_BUFFER_SIZE}
#define TCPIP_HTTP_NET_FILE_PROCESS_BUFFERS_NUMBER      ${CONFIG_TCPIP_HTTP_NET_FILE_PROCESS_BUFFERS_NUMBER}
#define TCPIP_HTTP_NET_FILE_PROCESS_BUFFER_RETRIES      ${CONFIG_TCPIP_HTTP_NET_FILE_PROCESS_BUFFER_RETRIES}
#define TCPIP_HTTP_NET_CHUNKS_NUMBER                    ${CONFIG_TCPIP_HTTP_NET_CHUNKS_NUMBER}
#define TCPIP_HTTP_NET_CHUNK_RETRIES                    ${CONFIG_TCPIP_HTTP_NET_CHUNK_RETRIES}
#define TCPIP_HTTP_NET_MAX_RECURSE_LEVEL				${CONFIG_TCPIP_HTTP_NET_MAX_RECURSE_LEVEL}
<#if CONFIG_TCPIP_HTTP_NET_DYNVAR_PROCESS == true>
#define TCPIP_HTTP_NET_DYNVAR_PROCESS           1
#define TCPIP_HTTP_NET_DYNVAR_DESCRIPTORS_NUMBER		${CONFIG_TCPIP_HTTP_NET_DYNVAR_DESCRIPTORS_NUMBER}
#define TCPIP_HTTP_NET_DYNVAR_MAX_LEN					${CONFIG_TCPIP_HTTP_NET_DYNVAR_MAX_LEN}
#define TCPIP_HTTP_NET_DYNVAR_ARG_MAX_NUMBER			${CONFIG_TCPIP_HTTP_NET_DYNVAR_ARG_MAX_NUMBER}
#define TCPIP_HTTP_NET_DYNVAR_PROCESS_RETRIES			${CONFIG_TCPIP_HTTP_NET_DYNVAR_PROCESS_RETRIES}
<#else>
#define TCPIP_HTTP_NET_DYNVAR_PROCESS           0
</#if>
<#if CONFIG_TCPIP_HTTP_NET_SSI_PROCESS == true>
#define TCPIP_HTTP_NET_SSI_PROCESS           1
#define TCPIP_HTTP_NET_SSI_ATTRIBUTES_MAX_NUMBER        ${CONFIG_TCPIP_HTTP_NET_SSI_ATTRIBUTES_MAX_NUMBER}
#define TCPIP_HTTP_NET_SSI_STATIC_ATTTRIB_NUMBER        ${CONFIG_TCPIP_HTTP_NET_SSI_STATIC_ATTTRIB_NUMBER}
#define TCPIP_HTTP_NET_SSI_CMD_MAX_LEN                  ${CONFIG_TCPIP_HTTP_NET_SSI_CMD_MAX_LEN}
#define TCPIP_HTTP_NET_SSI_VARIABLES_NUMBER             ${CONFIG_TCPIP_HTTP_NET_SSI_VARIABLES_NUMBER}
#define TCPIP_HTTP_NET_SSI_VARIABLE_NAME_MAX_LENGTH     ${CONFIG_TCPIP_HTTP_NET_SSI_VARIABLE_NAME_MAX_LENGTH}
#define TCPIP_HTTP_NET_SSI_VARIABLE_STRING_MAX_LENGTH   ${CONFIG_TCPIP_HTTP_NET_SSI_VARIABLE_STRING_MAX_LENGTH}
#define TCPIP_HTTP_NET_SSI_ECHO_NOT_FOUND_MESSAGE       "${CONFIG_TCPIP_HTTP_NET_SSI_ECHO_NOT_FOUND_MESSAGE}"
<#else>
#define TCPIP_HTTP_NET_SSI_PROCESS           0
</#if>
</#if>

<#--
/*******************************************************************************
 End of File
*/
-->